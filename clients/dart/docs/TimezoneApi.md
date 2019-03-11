# openapi.api.TimezoneApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**timezone**](TimezoneApi.md#timezone) | **GET** /timezone.php | timezone


# **timezone**
> Object timezone(lat, lon)

timezone

The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: token
//openapi.api.Configuration.apiKey{'token'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'token'} = "Bearer";

var api_instance = new TimezoneApi();
var lat = 40.6892474; // double | lattitude of the location
var lon = -74.0445404280149; // double | longitude of location

try { 
    var result = api_instance.timezone(lat, lon);
    print(result);
} catch (e) {
    print("Exception when calling TimezoneApi->timezone: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**| lattitude of the location | [default to null]
 **lon** | **double**| longitude of location | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

