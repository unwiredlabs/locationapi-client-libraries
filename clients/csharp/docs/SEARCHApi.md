# unwired.Api.SEARCHApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Search**](SEARCHApi.md#search) | **GET** /search.php | Forward Geocoding


<a name="search"></a>
# **Search**
> Object Search (string q, string viewbox = null, long? limit = null, string acceptLanguage = null, string countrycodes = null)

Forward Geocoding

The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.

### Example
```csharp
using System;
using System.Diagnostics;
using unwired.Api;
using unwired.Client;
using unwired.Model;

namespace Example
{
    public class SearchExample
    {
        public void main()
        {
            // Configure API key authorization: token
            Configuration.Default.AddApiKey("token", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("token", "Bearer");

            var apiInstance = new SEARCHApi();
            var q = "Statue of Liberty";  // string | Address to geocode
            var viewbox = "-132.84908,47.69382,-70.44674,30.82531";  // string | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box.  (optional) 
            var limit = 10;  // long? | Limit the number of returned results. Default is 10. (optional)  (default to 10)
            var acceptLanguage = "en";  // string | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native (optional) 
            var countrycodes = "us";  // string | Limit search to a list of countries. (optional) 

            try
            {
                // Forward Geocoding
                Object result = apiInstance.Search(q, viewbox, limit, acceptLanguage, countrycodes);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SEARCHApi.Search: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Address to geocode | 
 **viewbox** | **string**| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] 
 **limit** | **long?**| Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **acceptLanguage** | **string**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **countrycodes** | **string**| Limit search to a list of countries. | [optional] 

### Return type

**Object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

