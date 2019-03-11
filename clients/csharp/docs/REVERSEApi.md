# unwired.Api.REVERSEApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Reverse**](REVERSEApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


<a name="reverse"></a>
# **Reverse**
> Object Reverse (double? lat, double? lon, long? zoom = null, string acceptLanguage = null)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example
```csharp
using System;
using System.Diagnostics;
using unwired.Api;
using unwired.Client;
using unwired.Model;

namespace Example
{
    public class ReverseExample
    {
        public void main()
        {
            // Configure API key authorization: token
            Configuration.Default.AddApiKey("token", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("token", "Bearer");

            var apiInstance = new REVERSEApi();
            var lat = 17.24;  // double? | Latitude of the location to generate an address for.
            var lon = 74.25;  // double? | Longitude of the location to generate an address for.
            var zoom = 2;  // long? | Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building (optional) 
            var acceptLanguage = "Empire state building";  // string | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native (optional) 

            try
            {
                // Reverse Geocoding
                Object result = apiInstance.Reverse(lat, lon, zoom, acceptLanguage);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling REVERSEApi.Reverse: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double?**| Latitude of the location to generate an address for. | 
 **lon** | **double?**| Longitude of the location to generate an address for. | 
 **zoom** | **long?**| Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building | [optional] 
 **acceptLanguage** | **string**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 

### Return type

**Object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

