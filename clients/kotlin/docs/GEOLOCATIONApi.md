# GEOLOCATIONApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geolocation**](GEOLOCATIONApi.md#geolocation) | **POST** /process.php | Geolocation


<a name="geolocation"></a>
# **geolocation**
> kotlin.Any geolocation(geolocationSchema)

Geolocation

The Geolocation API helps developers locate IoT, M2M and other connected devices anywhere in the world without GPS. The device first sends the API data about which Cellular networks and WiFi networks it can see nearby. The API then uses Unwired Labs’ large datasets of Cell towers, WiFi networks backed by numerous algorithms to calculate and return the device’s location

### Example
```kotlin
// Import classes:
//import unwired.infrastructure.*
//import unwired.models.*

val apiInstance = GEOLOCATIONApi()
val geolocationSchema : GeolocationSchema =  // GeolocationSchema | 
try {
    val result : kotlin.Any = apiInstance.geolocation(geolocationSchema)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GEOLOCATIONApi#geolocation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GEOLOCATIONApi#geolocation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geolocationSchema** | [**GeolocationSchema**](GeolocationSchema.md)|  |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

