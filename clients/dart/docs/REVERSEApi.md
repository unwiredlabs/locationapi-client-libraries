# openapi.api.REVERSEApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](REVERSEApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


# **reverse**
> Object reverse(lat, lon, zoom, acceptLanguage)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: token
//openapi.api.Configuration.apiKey{'token'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'token'} = "Bearer";

var api_instance = new REVERSEApi();
var lat = 17.24; // double | Latitude of the location to generate an address for.
var lon = 74.25; // double | Longitude of the location to generate an address for.
var zoom = 2; // int | Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building
var acceptLanguage = "Empire state building"; // String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native

try { 
    var result = api_instance.reverse(lat, lon, zoom, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling REVERSEApi->reverse: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**| Latitude of the location to generate an address for. | [default to null]
 **lon** | **double**| Longitude of the location to generate an address for. | [default to null]
 **zoom** | **int**| Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building | [optional] [default to null]
 **acceptLanguage** | **String**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

