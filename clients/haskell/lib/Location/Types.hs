{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Location.Types (
  Address_details_schema (..),
  Address_schema (..),
  All_schema (..),
  Balance_response_schema (..),
  Bt_schema (..),
  Cell_schema (..),
  Error_schema (..),
  Fallback_schema (..),
  Geolocation_address_schema (..),
  Geolocation_error_schema (..),
  Geolocation_response_schema (..),
  Geolocation_schema (..),
  Ipf_schema (..),
  Lacf_schema (..),
  Radio_schema (..),
  Reverse_response_schema (..),
  Scf_schema (..),
  Search_response_schema (..),
  Timezone_response_schema (..),
  Timezone_schema (..),
  Wifi_schema (..),
  ) where

import Data.List (stripPrefix)
import Data.Maybe (fromMaybe)
import Data.Aeson (Value, FromJSON(..), ToJSON(..), genericToJSON, genericParseJSON)
import Data.Aeson.Types (Options(..), defaultOptions)
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Map as Map
import GHC.Generics (Generic)
import Data.Function ((&))


-- | The API only returns components that have valid values for a location. Component town is normalized to city to make things simple
data Address_details_schema = Address_details_schema
  { addressDetailsSchemaArea :: Text -- ^ 
  , addressDetailsSchemaLocality :: Text -- ^ 
  , addressDetailsSchemaDistrict :: Text -- ^ 
  , addressDetailsSchemaCounty :: Text -- ^ 
  , addressDetailsSchemaCity :: Text -- ^ 
  , addressDetailsSchemaState :: Text -- ^ 
  , addressDetailsSchemaCountry :: Text -- ^ 
  , addressDetailsSchemaCountryUnderscorecode :: Text -- ^ 
  , addressDetailsSchemaPostalUnderscorecode :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Address_details_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "addressDetailsSchema")
instance ToJSON Address_details_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "addressDetailsSchema")

-- | Address object found for the search query
data Address_schema = Address_schema
  { addressSchemaLat :: Text -- ^ Latitude of the given location (decimal)
  , addressSchemaLon :: Text -- ^ Longitude of the given location (decimal)
  , addressSchemaDisplayUnderscorename :: Text -- ^ Matched Address name for the given location
  , addressSchemaHouseUnderscorenumber :: Text -- ^ House Number
  , addressSchemaRoad :: Text -- ^ Road Name
  , addressSchemaNeighborhood :: Text -- ^ Neighbourhood
  , addressSchemaSuburb :: Text -- ^ Suburb
  , addressSchemaCity :: Text -- ^ City name (normalized form of city, town, village, hamlet)
  , addressSchemaCounty :: Text -- ^ County name (normalized form of county, state_district)
  , addressSchemaCountry :: Text -- ^ Country name
  , addressSchemaCountryUnderscorecode :: Text -- ^ Country code
  , addressSchemaPostalUnderscorecode :: Text -- ^ Postal code
  } deriving (Show, Eq, Generic)

instance FromJSON Address_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "addressSchema")
instance ToJSON Address_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "addressSchema")

-- | Enable or disable all fallbacks.
data All_schema = All_schema
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON All_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "allSchema")
instance ToJSON All_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "allSchema")

-- | 
data Balance_response_schema = Balance_response_schema
  { balanceResponseSchemaStatus :: Text -- ^ If the request is successful, ok is returned. Otherwise error is returned
  , balanceResponseSchemaBalanceUnderscoregeolocation :: Integer -- ^ Remaining balance left in the account for geolocation requests
  , balanceResponseSchemaBalanceUnderscoregeocoding :: Integer -- ^ Remaining balance left in the account for geocoding requests
  } deriving (Show, Eq, Generic)

instance FromJSON Balance_response_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "balanceResponseSchema")
instance ToJSON Balance_response_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "balanceResponseSchema")

-- | Specify level of strictness to apply to Borders
data Bt_schema = Bt_schema
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Bt_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "btSchema")
instance ToJSON Bt_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "btSchema")

-- | You can send 1 to 7 cell ID objects. If your device supports scanning for more than 7 cell objects, reach out to us and we’ll increase this limit on your account. The first cell object has to be that of the serving cell, i.e. the tower the device is connected to. The others are neighbouring cell objects that are visible to the device. Except lac and cid all other parameters mentioned below are optional. Parameters vary depending on the radio type. Supported radio types and their corresponding parameters are
data Cell_schema = Cell_schema
  { cellSchemaLac :: Integer -- ^ the Location Area Code of your operator’s network.
  , cellSchemaCid :: Integer -- ^ Cell ID
  , cellSchemaRadio :: Radio_schema -- ^ 
  , cellSchemaMcc :: Integer -- ^ \"Mobile Country Code of your operator’s network represented by an integer (Optional). Range: 0 to 999.\"
  , cellSchemaMnc :: Integer -- ^ Mobile Network Code of your operator’s network represented by an integer (Optional). Range: 0 to 999. On CDMA, provide the System ID or SID, with range: 1 to 32767.
  , cellSchemaSignal :: Integer -- ^ Signal Strength (RSSI)
  , cellSchemaPsc :: Integer -- ^ Primary Scrambling Code
  , cellSchemaAsu :: Integer -- ^ Arbitrary Strength Unit
  , cellSchemaTa :: Integer -- ^ Timing Advance
  } deriving (Show, Eq, Generic)

instance FromJSON Cell_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "cellSchema")
instance ToJSON Cell_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "cellSchema")

-- | 
data Error_schema = Error_schema
  { errorSchemaStatus :: Text -- ^ If the request is successful, ok is returned. Otherwise error is returned
  , errorSchemaMessage :: Text -- ^ Any additional information from the server is returned here
  } deriving (Show, Eq, Generic)

instance FromJSON Error_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "errorSchema")
instance ToJSON Error_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "errorSchema")

-- | An array of fallback options to enable or disable.
data Fallback_schema = Fallback_schema
  { fallbackSchemaAll :: All_schema -- ^ 
  , fallbackSchemaIpf :: Ipf_schema -- ^ 
  , fallbackSchemaLacf :: Lacf_schema -- ^ 
  , fallbackSchemaScf :: Scf_schema -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Fallback_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "fallbackSchema")
instance ToJSON Fallback_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "fallbackSchema")

-- | The physical address of the returned location
data Geolocation_address_schema = Geolocation_address_schema
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Geolocation_address_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "geolocationAddressSchema")
instance ToJSON Geolocation_address_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "geolocationAddressSchema")

-- | 
data Geolocation_error_schema = Geolocation_error_schema
  { geolocationErrorSchemaStatus :: Text -- ^ If the request is successful, ok is returned. Otherwise error is returned
  , geolocationErrorSchemaMessage :: Text -- ^ Any additional information from the server is returned here
  , geolocationErrorSchemaBalance :: Integer -- ^ This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance.
  } deriving (Show, Eq, Generic)

instance FromJSON Geolocation_error_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "geolocationErrorSchema")
instance ToJSON Geolocation_error_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "geolocationErrorSchema")

-- | The response will be a JSON object.
data Geolocation_response_schema = Geolocation_response_schema
  { geolocationResponseSchemaStatus :: Text -- ^ If the request is successful, ok is returned. Otherwise error is returned
  , geolocationResponseSchemaMessage :: Text -- ^ Any additional information from the server is returned here
  , geolocationResponseSchemaBalance :: Integer -- ^ This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance
  , geolocationResponseSchemaBalanceUnderscoreslots :: Integer -- ^ This represents the remaining balance of device slots. Requests that return error are not charged and do not affect balance. If -1 is returned, then observe it as an error while calculating slots balance. This element will only exist if you are on a device plan.
  , geolocationResponseSchemaLat :: Double -- ^ The latitude representing the location
  , geolocationResponseSchemaLon :: Double -- ^ The longitude representing the location
  , geolocationResponseSchemaAccuracy :: Integer -- ^ The accuracy of the position is returned in meters
  , geolocationResponseSchemaAddress :: Text -- ^ The physical address of the location
  , geolocationResponseSchemaAddressUnderscoredetails :: Address_details_schema -- ^ 
  , geolocationResponseSchemaAged :: Int -- ^ Shown when the location is based on a single measurement or those older than 90 days or is an LAC fallback
  , geolocationResponseSchemaFallback :: Fallback_schema -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Geolocation_response_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "geolocationResponseSchema")
instance ToJSON Geolocation_response_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "geolocationResponseSchema")

-- | 
data Geolocation_schema = Geolocation_schema
  { geolocationSchemaToken :: Text -- ^ 
  , geolocationSchemaId :: Text -- ^ ID of the device, in case you are in a per-device plan. This could be any unique string such as an IMEI, IMSI, phone number or a hash of any of the previous values, etc. Maximum accepted length is 20 chars, and values should only be alphanumeric (a-z, 0-9)
  , geolocationSchemaRadio :: Radio_schema -- ^ 
  , geolocationSchemaMcc :: Integer -- ^ \"Mobile Country Code of your operator’s network represented by an integer (Optional). Range: 0 to 999.\"
  , geolocationSchemaMnc :: Integer -- ^ Mobile Network Code of your operator’s network represented by an integer (Optional). Range: 0 to 999. On CDMA, provide the System ID or SID, with range: 1 to 32767.
  , geolocationSchemaCells :: [Cell_schema] -- ^ An array of cell ID objects
  , geolocationSchemaWifi :: [Wifi_schema] -- ^ An array of WiFi objects visible to the device.
  , geolocationSchemaFallbacks :: Fallback_schema -- ^ 
  , geolocationSchemaAddress :: Geolocation_address_schema -- ^ 
  , geolocationSchemaIp :: Text -- ^ IP address of device.
  , geolocationSchemaBt :: Bt_schema -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Geolocation_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "geolocationSchema")
instance ToJSON Geolocation_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "geolocationSchema")

-- | Enable IP address fallback. Specify IP address of the device in the “ip” field if it’s different from the device making the API call.
data Ipf_schema = Ipf_schema
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Ipf_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "ipfSchema")
instance ToJSON Ipf_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "ipfSchema")

-- | Enable LAC fallback. If we are unable to locate a cell, we will return an approzimate location based on nearby cells in our database.
data Lacf_schema = Lacf_schema
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Lacf_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "lacfSchema")
instance ToJSON Lacf_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "lacfSchema")

-- | Radio type of the device. Supported values are ‘gsm’, ‘cdma’, ‘umts’ and ‘lte’. This field should be included for more accurate results.
data Radio_schema = Radio_schema
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Radio_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "radioSchema")
instance ToJSON Radio_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "radioSchema")

-- | 
data Reverse_response_schema = Reverse_response_schema
  { reverseResponseSchemaStatus :: Text -- ^ If the request is successful, ok is returned. Otherwise error is returned
  , reverseResponseSchemaBalance :: Integer -- ^ Balance left in the account
  , reverseResponseSchemaAddress :: Address_schema -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Reverse_response_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "reverseResponseSchema")
instance ToJSON Reverse_response_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "reverseResponseSchema")

-- | Enable Short CID fallback. Adds support for devices that can only see 16-bit (short) CID of an UMTS 28-bit UTRAN CID.
data Scf_schema = Scf_schema
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Scf_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "scfSchema")
instance ToJSON Scf_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "scfSchema")

-- | 
data Search_response_schema = Search_response_schema
  { searchResponseSchemaStatus :: Text -- ^ If the request is successful, ok is returned. Otherwise error is returned
  , searchResponseSchemaBalance :: Double -- ^ Balance left in the account
  , searchResponseSchemaAddresses :: [Address_schema] -- ^ Array of Address objects found for the search query
  } deriving (Show, Eq, Generic)

instance FromJSON Search_response_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "searchResponseSchema")
instance ToJSON Search_response_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "searchResponseSchema")

-- | 
data Timezone_response_schema = Timezone_response_schema
  { timezoneResponseSchemaStatus :: Text -- ^ If the request is successful, ok is returned. Otherwise error is returned
  , timezoneResponseSchemaBalance :: Integer -- ^ Balance left in the account
  , timezoneResponseSchemaTimezone :: Timezone_schema -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Timezone_response_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "timezoneResponseSchema")
instance ToJSON Timezone_response_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "timezoneResponseSchema")

-- | Timezone object found for the location.
data Timezone_schema = Timezone_schema
  { timezoneSchemaShortUnderscorename :: Text -- ^ Short name of the Timezone
  , timezoneSchemaOffsetUnderscoresec :: Double -- ^ The offset from UTC (in seconds) for the given location. Considers DST savings.
  , timezoneSchemaNowUnderscoreinUnderscoredst :: Text -- ^ Represents whether the zone currently observing DST or not
  , timezoneSchemaName :: Text -- ^ Timezone name of the Location
  } deriving (Show, Eq, Generic)

instance FromJSON Timezone_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "timezoneSchema")
instance ToJSON Timezone_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "timezoneSchema")

-- | You can send a minimum of 2 and a maximum of 15 WiFi objects in 1 request. If WiFi is not available, wifi object can be omitted all together. In accordance with our industry’s privacy standards we require a minimum of 2 valid nearby Access Points to be sent. If your use-case allows only 1 AP, reach out to us.
data Wifi_schema = Wifi_schema
  { wifiSchemaBssid :: Text -- ^ Basic Service Set Identifier or MAC address of the Access Point. Typical format of a MAC address is xx-xx-xx-xx-xx-xx. However, the delimiter can be any of these when sent to the API: : or - or .
  , wifiSchemaChannel :: Integer -- ^ Channel the WiFi network is operating in (optional)
  , wifiSchemaFrequency :: Integer -- ^ Frequency the WiFi network is operating in (MHz) (optional)
  , wifiSchemaSignal :: Integer -- ^ Signal Strength (RSSI)
  , wifiSchemaSignalToNoiseRatio :: Integer -- ^ The current signal to noise ratio, measured in dB (optional)
  } deriving (Show, Eq, Generic)

instance FromJSON Wifi_schema where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "wifiSchema")
instance ToJSON Wifi_schema where
  toJSON = genericToJSON (removeFieldLabelPrefix False "wifiSchema")

-- Remove a field label prefix during JSON parsing.
-- Also perform any replacements for special characters.
removeFieldLabelPrefix :: Bool -> String -> Options
removeFieldLabelPrefix forParsing prefix =
  defaultOptions
  {fieldLabelModifier = fromMaybe (error ("did not find prefix " ++ prefix)) . stripPrefix prefix . replaceSpecialChars}
  where
    replaceSpecialChars field = foldl (&) field (map mkCharReplacement specialChars)
    specialChars =
      [ ("@", "'At")
      , ("\\", "'Back_Slash")
      , ("<=", "'Less_Than_Or_Equal_To")
      , ("\"", "'Double_Quote")
      , ("[", "'Left_Square_Bracket")
      , ("]", "'Right_Square_Bracket")
      , ("^", "'Caret")
      , ("_", "'Underscore")
      , ("`", "'Backtick")
      , ("!", "'Exclamation")
      , ("#", "'Hash")
      , ("$", "'Dollar")
      , ("%", "'Percent")
      , ("&", "'Ampersand")
      , ("'", "'Quote")
      , ("(", "'Left_Parenthesis")
      , (")", "'Right_Parenthesis")
      , ("*", "'Star")
      , ("+", "'Plus")
      , (",", "'Comma")
      , ("-", "'Dash")
      , (".", "'Period")
      , ("/", "'Slash")
      , (":", "'Colon")
      , ("{", "'Left_Curly_Bracket")
      , ("|", "'Pipe")
      , ("<", "'LessThan")
      , ("!=", "'Not_Equal")
      , ("=", "'Equal")
      , ("}", "'Right_Curly_Bracket")
      , (">", "'GreaterThan")
      , ("~", "'Tilde")
      , ("?", "'Question_Mark")
      , (">=", "'Greater_Than_Or_Equal_To")
      ]
    mkCharReplacement (replaceStr, searchStr) = T.unpack . replacer (T.pack searchStr) (T.pack replaceStr) . T.pack
    replacer =
      if forParsing
        then flip T.replace
        else T.replace
