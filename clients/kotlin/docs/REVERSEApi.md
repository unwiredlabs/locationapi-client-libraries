# REVERSEApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](REVERSEApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


<a name="reverse"></a>
# **reverse**
> kotlin.Any reverse(lat, lon, zoom, acceptLanguage)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example
```kotlin
// Import classes:
//import unwired.infrastructure.*
//import unwired.models.*

val apiInstance = REVERSEApi()
val lat : kotlin.Double = 17.24 // kotlin.Double | Latitude of the location to generate an address for.
val lon : kotlin.Double = 74.25 // kotlin.Double | Longitude of the location to generate an address for.
val zoom : kotlin.Long = 2 // kotlin.Long | Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building
val acceptLanguage : kotlin.String = "Empire state building" // kotlin.String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
try {
    val result : kotlin.Any = apiInstance.reverse(lat, lon, zoom, acceptLanguage)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling REVERSEApi#reverse")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling REVERSEApi#reverse")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **kotlin.Double**| Latitude of the location to generate an address for. | [default to null]
 **lon** | **kotlin.Double**| Longitude of the location to generate an address for. | [default to null]
 **zoom** | **kotlin.Long**| Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building | [optional] [default to null]
 **acceptLanguage** | **kotlin.String**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] [default to null]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

