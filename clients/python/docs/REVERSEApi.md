# unwired.REVERSEApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](REVERSEApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


# **reverse**
> object reverse(lat, lon, zoom=zoom, accept_language=accept_language)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

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
api_instance = unwired.REVERSEApi(unwired.ApiClient(configuration))
lat = 17.24 # float | Latitude of the location to generate an address for.
lon = 74.25 # float | Longitude of the location to generate an address for.
zoom = 2 # int | Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building (optional)
accept_language = "Empire state building" # str | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native (optional)

try:
    # Reverse Geocoding
    api_response = api_instance.reverse(lat, lon, zoom=zoom, accept_language=accept_language)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling REVERSEApi->reverse: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **float**| Latitude of the location to generate an address for. | 
 **lon** | **float**| Longitude of the location to generate an address for. | 
 **zoom** | **int**| Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building | [optional] 
 **accept_language** | **str**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

