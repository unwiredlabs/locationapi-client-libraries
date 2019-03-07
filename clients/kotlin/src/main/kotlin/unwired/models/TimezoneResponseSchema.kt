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
package unwired.models

import unwired.models.TimezoneSchema

/**
 * 
 * @param status If the request is successful, ok is returned. Otherwise error is returned
 * @param balance Balance left in the account
 * @param timezone 
 */
data class TimezoneResponseSchema (
    /* If the request is successful, ok is returned. Otherwise error is returned */
    val status: kotlin.String? = null,
    /* Balance left in the account */
    val balance: kotlin.Long? = null,
    val timezone: TimezoneSchema? = null
) {

}
