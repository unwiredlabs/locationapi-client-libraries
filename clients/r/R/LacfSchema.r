# Location API
#
# Geolocation, Geocoding and Maps
#
# OpenAPI spec version: 2.0.0
# 
# Generated by: https://openapi-generator.tech


#' LacfSchema Class
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LacfSchema <- R6::R6Class(
  'LacfSchema',
  public = list(
    initialize = function(){
    },
    toJSON = function() {
      LacfSchemaObject <- list()

      LacfSchemaObject
    },
    fromJSON = function(LacfSchemaJson) {
      LacfSchemaObject <- jsonlite::fromJSON(LacfSchemaJson)
    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(LacfSchemaJson) {
      LacfSchemaObject <- jsonlite::fromJSON(LacfSchemaJson)
    }
  )
)