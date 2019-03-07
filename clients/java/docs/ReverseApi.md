# ReverseApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](ReverseApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


<a name="reverse"></a>
# **reverse**
> Object reverse(lat, lon, zoom, acceptLanguage)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example
```java
// Import classes:
//import unwired.ApiClient;
//import unwired.ApiException;
//import unwired.Configuration;
//import unwired.auth.*;
//import com.unwired.client.api.ReverseApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: token
ApiKeyAuth token = (ApiKeyAuth) defaultClient.getAuthentication("token");
token.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//token.setApiKeyPrefix("Token");

ReverseApi apiInstance = new ReverseApi();
Double lat = 17.24; // Double | Latitude of the location to generate an address for.
Double lon = 74.25; // Double | Longitude of the location to generate an address for.
Long zoom = 2; // Long | Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building
String acceptLanguage = "Empire state building"; // String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
try {
    Object result = apiInstance.reverse(lat, lon, zoom, acceptLanguage);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ReverseApi#reverse");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Double**| Latitude of the location to generate an address for. |
 **lon** | **Double**| Longitude of the location to generate an address for. |
 **zoom** | **Long**| Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building | [optional]
 **acceptLanguage** | **String**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional]

### Return type

**Object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

