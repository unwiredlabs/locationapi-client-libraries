/**
 * Location API
 * Geolocation, Geocoding and Maps
 *
 * OpenAPI spec version: 2.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model


case class ErrorSchema (
  // If the request is successful, ok is returned. Otherwise error is returned
  status: Option[String] = None,
  // Any additional information from the server is returned here
  message: Option[String] = None
)

