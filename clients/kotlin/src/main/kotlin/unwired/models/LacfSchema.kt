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


import com.squareup.moshi.Json

/**
* Enable LAC fallback. If we are unable to locate a cell, we will return an approzimate location based on nearby cells in our database.
* Values: _0,_1,_2
*/
enum class LacfSchema(val value: kotlin.Int){

    @Json(name = "0") _0(0),

    @Json(name = "1") _1(1),

    @Json(name = "2") _2(2);

}

