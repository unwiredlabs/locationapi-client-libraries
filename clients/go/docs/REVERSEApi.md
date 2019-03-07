# \REVERSEApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Reverse**](REVERSEApi.md#Reverse) | **Get** /reverse.php | Reverse Geocoding


# **Reverse**
> map[string]interface{} Reverse(ctx, lat, lon, optional)
Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **lat** | **float64**| Latitude of the location to generate an address for. | 
  **lon** | **float64**| Longitude of the location to generate an address for. | 
 **optional** | ***ReverseOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ReverseOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **zoom** | **optional.Int64**| Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building | 
 **acceptLanguage** | **optional.String**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

