(ns location-api.api.search
  (:require [location-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn search-with-http-info
  "Forward Geocoding
  The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding."
  ([q ] (search-with-http-info q nil))
  ([q {:keys [viewbox limit accept-language countrycodes ]}]
   (check-required-params q)
   (call-api "/search.php" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"q" q "viewbox" viewbox "limit" limit "accept-language" accept-language "countrycodes" countrycodes }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["token"]})))

(defn search
  "Forward Geocoding
  The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding."
  ([q ] (search q nil))
  ([q optional-params]
   (:data (search-with-http-info q optional-params))))

