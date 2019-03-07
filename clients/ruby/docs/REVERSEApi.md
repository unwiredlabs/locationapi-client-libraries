# unwiredClient::REVERSEApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](REVERSEApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


# **reverse**
> Object reverse(lat, lon, opts)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

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

api_instance = unwiredClient::REVERSEApi.new
lat = 17.24 # Float | Latitude of the location to generate an address for.
lon = 74.25 # Float | Longitude of the location to generate an address for.
opts = {
  zoom: 2, # Integer | Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building
  accept_language: '\"Empire state building\"' # String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
}

begin
  #Reverse Geocoding
  result = api_instance.reverse(lat, lon, opts)
  p result
rescue unwiredClient::ApiError => e
  puts "Exception when calling REVERSEApi->reverse: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Float**| Latitude of the location to generate an address for. | 
 **lon** | **Float**| Longitude of the location to generate an address for. | 
 **zoom** | **Integer**| Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building | [optional] 
 **accept_language** | **String**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 

### Return type

**Object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



