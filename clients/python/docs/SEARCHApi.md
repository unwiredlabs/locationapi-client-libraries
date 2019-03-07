# unwired.SEARCHApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](SEARCHApi.md#search) | **GET** /search.php | Forward Geocoding


# **search**
> object search(q, viewbox=viewbox, limit=limit, accept_language=accept_language, countrycodes=countrycodes)

Forward Geocoding

The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.

### Example

* Api Key Authentication (token): 
```python
from __future__ import print_function
import time
import unwired
from unwired.rest import ApiException
from pprint import pprint

# Configure API key authorization: token
configuration = unwired.Configuration()
configuration.api_key['token'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['token'] = 'Bearer'

# create an instance of the API class
api_instance = unwired.SEARCHApi(unwired.ApiClient(configuration))
q = "Statue of Liberty" # str | Address to geocode
viewbox = "-132.84908,47.69382,-70.44674,30.82531" # str | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box.  (optional)
limit = 10 # int | Limit the number of returned results. Default is 10. (optional) (default to 10)
accept_language = "en" # str | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native (optional)
countrycodes = "us" # str | Limit search to a list of countries. (optional)

try:
    # Forward Geocoding
    api_response = api_instance.search(q, viewbox=viewbox, limit=limit, accept_language=accept_language, countrycodes=countrycodes)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SEARCHApi->search: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**| Address to geocode | 
 **viewbox** | **str**| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] 
 **limit** | **int**| Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **accept_language** | **str**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **countrycodes** | **str**| Limit search to a list of countries. | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

