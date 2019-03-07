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

import unwired.models.AddressDetailsSchema
import unwired.models.FallbackSchema

/**
 * The response will be a JSON object.
 * @param status If the request is successful, ok is returned. Otherwise error is returned
 * @param message Any additional information from the server is returned here
 * @param balance This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance
 * @param balanceSlots This represents the remaining balance of device slots. Requests that return error are not charged and do not affect balance. If -1 is returned, then observe it as an error while calculating slots balance. This element will only exist if you are on a device plan.
 * @param lat The latitude representing the location
 * @param lon The longitude representing the location
 * @param accuracy The accuracy of the position is returned in meters
 * @param address The physical address of the location
 * @param addressDetails 
 * @param aged Shown when the location is based on a single measurement or those older than 90 days or is an LAC fallback
 * @param fallback 
 */
data class GeolocationResponseSchema (
    /* If the request is successful, ok is returned. Otherwise error is returned */
    val status: kotlin.String? = null,
    /* Any additional information from the server is returned here */
    val message: kotlin.String? = null,
    /* This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance */
    val balance: kotlin.Long? = null,
    /* This represents the remaining balance of device slots. Requests that return error are not charged and do not affect balance. If -1 is returned, then observe it as an error while calculating slots balance. This element will only exist if you are on a device plan. */
    val balanceSlots: kotlin.Long? = null,
    /* The latitude representing the location */
    val lat: kotlin.Double? = null,
    /* The longitude representing the location */
    val lon: kotlin.Double? = null,
    /* The accuracy of the position is returned in meters */
    val accuracy: kotlin.Long? = null,
    /* The physical address of the location */
    val address: kotlin.String? = null,
    val addressDetails: AddressDetailsSchema? = null,
    /* Shown when the location is based on a single measurement or those older than 90 days or is an LAC fallback */
    val aged: kotlin.Int? = null,
    val fallback: FallbackSchema? = null
) {

}
