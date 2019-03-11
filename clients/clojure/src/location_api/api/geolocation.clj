(ns location-api.api.geolocation
  (:require [location-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn geolocation-with-http-info
  "Geolocation
  The Geolocation API helps developers locate IoT, M2M and other connected devices anywhere in the world without GPS. The device first sends the API data about which Cellular networks and WiFi networks it can see nearby. The API then uses Unwired Labs’ large datasets of Cell towers, WiFi networks backed by numerous algorithms to calculate and return the device’s location"
  [geolocation-schema ]
  (check-required-params geolocation-schema)
  (call-api "/process.php" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    geolocation-schema
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn geolocation
  "Geolocation
  The Geolocation API helps developers locate IoT, M2M and other connected devices anywhere in the world without GPS. The device first sends the API data about which Cellular networks and WiFi networks it can see nearby. The API then uses Unwired Labs’ large datasets of Cell towers, WiFi networks backed by numerous algorithms to calculate and return the device’s location"
  [geolocation-schema ]
  (:data (geolocation-with-http-info geolocation-schema)))

