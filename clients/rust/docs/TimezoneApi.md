# \TimezoneApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**timezone**](TimezoneApi.md#timezone) | **Get** /timezone.php | timezone


# **timezone**
> Value timezone(ctx, lat, lon)
timezone

The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **lat** | **f64**| lattitude of the location | 
  **lon** | **f64**| longitude of location | 

### Return type

[**Value**](Value.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

