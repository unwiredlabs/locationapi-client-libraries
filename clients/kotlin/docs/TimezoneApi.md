# TimezoneApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**timezone**](TimezoneApi.md#timezone) | **GET** /timezone.php | timezone


<a name="timezone"></a>
# **timezone**
> kotlin.Any timezone(lat, lon)

timezone

The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.

### Example
```kotlin
// Import classes:
//import unwired.infrastructure.*
//import unwired.models.*

val apiInstance = TimezoneApi()
val lat : kotlin.Double = 40.6892474 // kotlin.Double | lattitude of the location
val lon : kotlin.Double = -74.0445404280149 // kotlin.Double | longitude of location
try {
    val result : kotlin.Any = apiInstance.timezone(lat, lon)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TimezoneApi#timezone")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TimezoneApi#timezone")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **kotlin.Double**| lattitude of the location | [default to null]
 **lon** | **kotlin.Double**| longitude of location | [default to null]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

