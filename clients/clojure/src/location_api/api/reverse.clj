(ns location-api.api.reverse
  (:require [location-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn reverse-with-http-info
  "Reverse Geocoding
  Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country."
  ([lat lon ] (reverse-with-http-info lat lon nil))
  ([lat lon {:keys [zoom accept-language ]}]
   (check-required-params lat lon)
   (call-api "/reverse.php" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"lat" lat "lon" lon "zoom" zoom "accept-language" accept-language }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["token"]})))

(defn reverse
  "Reverse Geocoding
  Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country."
  ([lat lon ] (reverse lat lon nil))
  ([lat lon optional-params]
   (:data (reverse-with-http-info lat lon optional-params))))

