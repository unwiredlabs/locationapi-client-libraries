(ns location-api.api.balance
  (:require [location-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn balance-with-http-info
  "balance
  The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC)."
  []
  (call-api "/balance.php" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["token"]}))

(defn balance
  "balance
  The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC)."
  []
  (:data (balance-with-http-info)))

