{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE ViewPatterns #-}
{-# OPTIONS_GHC
-fno-warn-unused-binds -fno-warn-unused-imports -fcontext-stack=328 #-}

module Location.API
  -- * Client and Server
  ( ServerConfig(..)
  , LocationBackend
  , createLocationClient
  , runLocationServer
  , runLocationClient
  , runLocationClientWithManager
  , LocationClient
  -- ** Servant
  , LocationAPI
  ) where

import Location.Types

import Control.Monad.Except (ExceptT)
import Control.Monad.IO.Class
import Data.Aeson (Value)
import Data.Coerce (coerce)
import Data.Function ((&))
import qualified Data.Map as Map
import Data.Monoid ((<>))
import Data.Proxy (Proxy(..))
import Data.Text (Text)
import qualified Data.Text as T
import GHC.Exts (IsString(..))
import GHC.Generics (Generic)
import Network.HTTP.Client (Manager, defaultManagerSettings, newManager)
import Network.HTTP.Types.Method (methodOptions)
import qualified Network.Wai.Handler.Warp as Warp
import Servant (ServantErr, serve)
import Servant.API
import Servant.API.Verbs (StdMethod(..), Verb)
import Servant.Client (Scheme(Http), ServantError, client)
import Servant.Common.BaseUrl (BaseUrl(..))
import Web.HttpApiData




-- For the form data code generation.
lookupEither :: FromHttpApiData b => Text -> [(Text, Text)] -> Either String b
lookupEither key assocs =
  case lookup key assocs of
    Nothing -> Left $ "Could not find parameter " <> (T.unpack key) <> " in form data"
    Just value ->
      case parseQueryParam value of
        Left result -> Left $ T.unpack result
        Right result -> Right $ result

-- | Servant type-level API, generated from the OpenAPI spec for Location.
type LocationAPI
    =    "balance.php" :> Verb 'GET 200 '[JSON] Value -- 'balance' route
    :<|> "process.php" :> ReqBody '[JSON] Geolocation_schema :> Verb 'POST 200 '[JSON] Value -- 'geolocation' route
    :<|> "reverse.php" :> QueryParam "lat" Double :> QueryParam "lon" Double :> QueryParam "zoom" Integer :> QueryParam "accept-language" Text :> Verb 'GET 200 '[JSON] Value -- 'reverse' route
    :<|> "search.php" :> QueryParam "q" Text :> QueryParam "viewbox" Text :> QueryParam "limit" Integer :> QueryParam "accept-language" Text :> QueryParam "countrycodes" Text :> Verb 'GET 200 '[JSON] Value -- 'search' route
    :<|> "timezone.php" :> QueryParam "lat" Double :> QueryParam "lon" Double :> Verb 'GET 200 '[JSON] Value -- 'timezone' route

-- | Server or client configuration, specifying the host and port to query or serve on.
data ServerConfig = ServerConfig
  { configHost :: String  -- ^ Hostname to serve on, e.g. "127.0.0.1"
  , configPort :: Int      -- ^ Port to serve on, e.g. 8080
  } deriving (Eq, Ord, Show, Read)

-- | List of elements parsed from a query.
newtype QueryList (p :: CollectionFormat) a = QueryList
  { fromQueryList :: [a]
  } deriving (Functor, Applicative, Monad, Foldable, Traversable)

-- | Formats in which a list can be encoded into a HTTP path.
data CollectionFormat
  = CommaSeparated -- ^ CSV format for multiple parameters.
  | SpaceSeparated -- ^ Also called "SSV"
  | TabSeparated -- ^ Also called "TSV"
  | PipeSeparated -- ^ `value1|value2|value2`
  | MultiParamArray -- ^ Using multiple GET parameters, e.g. `foo=bar&foo=baz`. Only for GET params.

instance FromHttpApiData a => FromHttpApiData (QueryList 'CommaSeparated a) where
  parseQueryParam = parseSeparatedQueryList ','

instance FromHttpApiData a => FromHttpApiData (QueryList 'TabSeparated a) where
  parseQueryParam = parseSeparatedQueryList '\t'

instance FromHttpApiData a => FromHttpApiData (QueryList 'SpaceSeparated a) where
  parseQueryParam = parseSeparatedQueryList ' '

instance FromHttpApiData a => FromHttpApiData (QueryList 'PipeSeparated a) where
  parseQueryParam = parseSeparatedQueryList '|'

instance FromHttpApiData a => FromHttpApiData (QueryList 'MultiParamArray a) where
  parseQueryParam = error "unimplemented FromHttpApiData for MultiParamArray collection format"

parseSeparatedQueryList :: FromHttpApiData a => Char -> Text -> Either Text (QueryList p a)
parseSeparatedQueryList char = fmap QueryList . mapM parseQueryParam . T.split (== char)

instance ToHttpApiData a => ToHttpApiData (QueryList 'CommaSeparated a) where
  toQueryParam = formatSeparatedQueryList ','

instance ToHttpApiData a => ToHttpApiData (QueryList 'TabSeparated a) where
  toQueryParam = formatSeparatedQueryList '\t'

instance ToHttpApiData a => ToHttpApiData (QueryList 'SpaceSeparated a) where
  toQueryParam = formatSeparatedQueryList ' '

instance ToHttpApiData a => ToHttpApiData (QueryList 'PipeSeparated a) where
  toQueryParam = formatSeparatedQueryList '|'

instance ToHttpApiData a => ToHttpApiData (QueryList 'MultiParamArray a) where
  toQueryParam = error "unimplemented ToHttpApiData for MultiParamArray collection format"

formatSeparatedQueryList :: ToHttpApiData a => Char ->  QueryList p a -> Text
formatSeparatedQueryList char = T.intercalate (T.singleton char) . map toQueryParam . fromQueryList


-- | Backend for Location.
-- The backend can be used both for the client and the server. The client generated from the Location OpenAPI spec
-- is a backend that executes actions by sending HTTP requests (see @createLocationClient@). Alternatively, provided
-- a backend, the API can be served using @runLocationServer@.
data LocationBackend m = LocationBackend
  { balance :: m Value{- ^ The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC). -}
  , geolocation :: Geolocation_schema -> m Value{- ^ The Geolocation API helps developers locate IoT, M2M and other connected devices anywhere in the world without GPS. The device first sends the API data about which Cellular networks and WiFi networks it can see nearby. The API then uses Unwired Labs’ large datasets of Cell towers, WiFi networks backed by numerous algorithms to calculate and return the device’s location -}
  , reverse :: Maybe Double -> Maybe Double -> Maybe Integer -> Maybe Text -> m Value{- ^ Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country. -}
  , search :: Maybe Text -> Maybe Text -> Maybe Integer -> Maybe Text -> Maybe Text -> m Value{- ^ The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding. -}
  , timezone :: Maybe Double -> Maybe Double -> m Value{- ^ The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth. -}
  }

newtype LocationClient a = LocationClient
  { runClient :: Manager -> BaseUrl -> ExceptT ServantError IO a
  } deriving Functor

instance Applicative LocationClient where
  pure x = LocationClient (\_ _ -> pure x)
  (LocationClient f) <*> (LocationClient x) =
    LocationClient (\manager url -> f manager url <*> x manager url)

instance Monad LocationClient where
  (LocationClient a) >>= f =
    LocationClient (\manager url -> do
      value <- a manager url
      runClient (f value) manager url)

instance MonadIO LocationClient where
  liftIO io = LocationClient (\_ _ -> liftIO io)

createLocationClient :: LocationBackend LocationClient
createLocationClient = LocationBackend{..}
  where
    ((coerce -> balance) :<|>
     (coerce -> geolocation) :<|>
     (coerce -> reverse) :<|>
     (coerce -> search) :<|>
     (coerce -> timezone)) = client (Proxy :: Proxy LocationAPI)

-- | Run requests in the LocationClient monad.
runLocationClient :: ServerConfig -> LocationClient a -> ExceptT ServantError IO a
runLocationClient clientConfig cl = do
  manager <- liftIO $ newManager defaultManagerSettings
  runLocationClientWithManager manager clientConfig cl

-- | Run requests in the LocationClient monad using a custom manager.
runLocationClientWithManager :: Manager -> ServerConfig -> LocationClient a -> ExceptT ServantError IO a
runLocationClientWithManager manager clientConfig cl =
  runClient cl manager $ BaseUrl Http (configHost clientConfig) (configPort clientConfig) ""

-- | Run the Location server at the provided host and port.
runLocationServer :: MonadIO m => ServerConfig -> LocationBackend (ExceptT ServantErr IO)  -> m ()
runLocationServer ServerConfig{..} backend =
  liftIO $ Warp.runSettings warpSettings $ serve (Proxy :: Proxy LocationAPI) (serverFromBackend backend)
  where
    warpSettings = Warp.defaultSettings & Warp.setPort configPort & Warp.setHost (fromString configHost)
    serverFromBackend LocationBackend{..} =
      (coerce balance :<|>
       coerce geolocation :<|>
       coerce reverse :<|>
       coerce search :<|>
       coerce timezone)
