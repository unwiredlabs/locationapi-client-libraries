# BALANCEApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balance**](BALANCEApi.md#balance) | **GET** /balance.php | balance


<a name="balance"></a>
# **balance**
> kotlin.Any balance()

balance

The Balance API provides a count of request credits left in the user&#39;s account for the day. Balance is reset at midnight UTC everyday (00:00 UTC).

### Example
```kotlin
// Import classes:
//import unwired.infrastructure.*
//import unwired.models.*

val apiInstance = BALANCEApi()
try {
    val result : kotlin.Any = apiInstance.balance()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BALANCEApi#balance")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BALANCEApi#balance")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

