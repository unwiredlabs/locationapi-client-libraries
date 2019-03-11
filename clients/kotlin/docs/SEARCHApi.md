# SEARCHApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](SEARCHApi.md#search) | **GET** /search.php | Forward Geocoding


<a name="search"></a>
# **search**
> kotlin.Any search(q, viewbox, limit, acceptLanguage, countrycodes)

Forward Geocoding

The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.

### Example
```kotlin
// Import classes:
//import unwired.infrastructure.*
//import unwired.models.*

val apiInstance = SEARCHApi()
val q : kotlin.String = "Statue of Liberty" // kotlin.String | Address to geocode
val viewbox : kotlin.String = "-132.84908,47.69382,-70.44674,30.82531" // kotlin.String | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box. 
val limit : kotlin.Long = 10 // kotlin.Long | Limit the number of returned results. Default is 10.
val acceptLanguage : kotlin.String = "en" // kotlin.String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
val countrycodes : kotlin.String = "us" // kotlin.String | Limit search to a list of countries.
try {
    val result : kotlin.Any = apiInstance.search(q, viewbox, limit, acceptLanguage, countrycodes)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SEARCHApi#search")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SEARCHApi#search")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **kotlin.String**| Address to geocode | [default to null]
 **viewbox** | **kotlin.String**| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] [default to null]
 **limit** | **kotlin.Long**| Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **acceptLanguage** | **kotlin.String**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] [default to null]
 **countrycodes** | **kotlin.String**| Limit search to a list of countries. | [optional] [default to null]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

