# unwiredClient::TimezoneApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**timezone**](TimezoneApi.md#timezone) | **GET** /timezone.php | timezone


# **timezone**
> Object timezone(lat, lon)

timezone

The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.

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

api_instance = unwiredClient::TimezoneApi.new
lat = 40.6892474 # Float | lattitude of the location
lon = -74.0445404280149 # Float | longitude of location

begin
  #timezone
  result = api_instance.timezone(lat, lon)
  p result
rescue unwiredClient::ApiError => e
  puts "Exception when calling TimezoneApi->timezone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Float**| lattitude of the location | 
 **lon** | **Float**| longitude of location | 

### Return type

**Object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



