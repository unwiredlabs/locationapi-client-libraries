# openapi.api.GEOLOCATIONApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geolocation**](GEOLOCATIONApi.md#geolocation) | **POST** /process.php | Geolocation


# **geolocation**
> Object geolocation(geolocationSchema)

Geolocation

The Geolocation API helps developers locate IoT, M2M and other connected devices anywhere in the world without GPS. The device first sends the API data about which Cellular networks and WiFi networks it can see nearby. The API then uses Unwired Labs’ large datasets of Cell towers, WiFi networks backed by numerous algorithms to calculate and return the device’s location

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new GEOLOCATIONApi();
var geolocationSchema = new GeolocationSchema(); // GeolocationSchema | 

try { 
    var result = api_instance.geolocation(geolocationSchema);
    print(result);
} catch (e) {
    print("Exception when calling GEOLOCATIONApi->geolocation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geolocationSchema** | [**GeolocationSchema**](GeolocationSchema.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

