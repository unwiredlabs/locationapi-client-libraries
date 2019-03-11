# unwiredClient::GEOLOCATIONApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geolocation**](GEOLOCATIONApi.md#geolocation) | **POST** /process.php | Geolocation


# **geolocation**
> Object geolocation(geolocation_schema)

Geolocation

The Geolocation API helps developers locate IoT, M2M and other connected devices anywhere in the world without GPS. The device first sends the API data about which Cellular networks and WiFi networks it can see nearby. The API then uses Unwired Labs’ large datasets of Cell towers, WiFi networks backed by numerous algorithms to calculate and return the device’s location

### Example
```ruby
# load the gem
require 'unwired-ruby-client'

api_instance = unwiredClient::GEOLOCATIONApi.new
geolocation_schema = unwiredClient::GeolocationSchema.new # GeolocationSchema | 

begin
  #Geolocation
  result = api_instance.geolocation(geolocation_schema)
  p result
rescue unwiredClient::ApiError => e
  puts "Exception when calling GEOLOCATIONApi->geolocation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geolocation_schema** | [**GeolocationSchema**](GeolocationSchema.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



