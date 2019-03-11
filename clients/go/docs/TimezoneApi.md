# \TimezoneApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Timezone**](TimezoneApi.md#Timezone) | **Get** /timezone.php | timezone


# **Timezone**
> map[string]interface{} Timezone(ctx, lat, lon)
timezone

The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **lat** | **float64**| lattitude of the location | 
  **lon** | **float64**| longitude of location | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

