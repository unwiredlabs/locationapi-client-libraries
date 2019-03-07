(ns location-api.api.timezone
  (:require [location-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn timezone-with-http-info
  "timezone
  The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth."
  [lat lon ]
  (check-required-params lat lon)
  (call-api "/timezone.php" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"lat" lat "lon" lon }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["token"]}))

(defn timezone
  "timezone
  The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth."
  [lat lon ]
  (:data (timezone-with-http-info lat lon)))

