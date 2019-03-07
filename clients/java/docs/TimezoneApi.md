# TimezoneApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**timezone**](TimezoneApi.md#timezone) | **GET** /timezone.php | timezone


<a name="timezone"></a>
# **timezone**
> Object timezone(lat, lon)

timezone

The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.

### Example
```java
// Import classes:
//import unwired.ApiClient;
//import unwired.ApiException;
//import unwired.Configuration;
//import unwired.auth.*;
//import com.unwired.client.api.TimezoneApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: token
ApiKeyAuth token = (ApiKeyAuth) defaultClient.getAuthentication("token");
token.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//token.setApiKeyPrefix("Token");

TimezoneApi apiInstance = new TimezoneApi();
Double lat = 40.6892474; // Double | lattitude of the location
Double lon = -74.0445404280149; // Double | longitude of location
try {
    Object result = apiInstance.timezone(lat, lon);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TimezoneApi#timezone");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Double**| lattitude of the location |
 **lon** | **Double**| longitude of location |

### Return type

**Object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

