# unwired.Api.TimezoneApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Timezone**](TimezoneApi.md#timezone) | **GET** /timezone.php | timezone


<a name="timezone"></a>
# **Timezone**
> Object Timezone (double? lat, double? lon)

timezone

The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.

### Example
```csharp
using System;
using System.Diagnostics;
using unwired.Api;
using unwired.Client;
using unwired.Model;

namespace Example
{
    public class TimezoneExample
    {
        public void main()
        {
            // Configure API key authorization: token
            Configuration.Default.AddApiKey("token", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("token", "Bearer");

            var apiInstance = new TimezoneApi();
            var lat = 40.6892474;  // double? | lattitude of the location
            var lon = -74.0445404280149;  // double? | longitude of location

            try
            {
                // timezone
                Object result = apiInstance.Timezone(lat, lon);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling TimezoneApi.Timezone: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double?**| lattitude of the location | 
 **lon** | **double?**| longitude of location | 

### Return type

**Object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

