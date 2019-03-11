# unwiredClient::SEARCHApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](SEARCHApi.md#search) | **GET** /search.php | Forward Geocoding


# **search**
> Object search(q, opts)

Forward Geocoding

The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.

### Example
```ruby
# load the gem
require 'unwired-ruby-client'
# setup authorization
unwiredClient.configure do |config|
  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['token'] = 'Bearer'
end

api_instance = unwiredClient::SEARCHApi.new
q = '\"Statue of Liberty\"' # String | Address to geocode
opts = {
  viewbox: '\"-132.84908,47.69382,-70.44674,30.82531\"', # String | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box. 
  limit: 10, # Integer | Limit the number of returned results. Default is 10.
  accept_language: '\"en\"', # String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
  countrycodes: '\"us\"' # String | Limit search to a list of countries.
}

begin
  #Forward Geocoding
  result = api_instance.search(q, opts)
  p result
rescue unwiredClient::ApiError => e
  puts "Exception when calling SEARCHApi->search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Address to geocode | 
 **viewbox** | **String**| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] 
 **limit** | **Integer**| Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **accept_language** | **String**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **countrycodes** | **String**| Limit search to a list of countries. | [optional] 

### Return type

**Object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



