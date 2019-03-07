# WWW::OpenAPIClient::GEOLOCATIONApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::GEOLOCATIONApi;
```

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geolocation**](GEOLOCATIONApi.md#geolocation) | **POST** /process.php | Geolocation


# **geolocation**
> object geolocation(geolocation_schema => $geolocation_schema)

Geolocation

The Geolocation API helps developers locate IoT, M2M and other connected devices anywhere in the world without GPS. The device first sends the API data about which Cellular networks and WiFi networks it can see nearby. The API then uses Unwired Labs’ large datasets of Cell towers, WiFi networks backed by numerous algorithms to calculate and return the device’s location

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GEOLOCATIONApi;
my $api_instance = WWW::OpenAPIClient::GEOLOCATIONApi->new(
);

my $geolocation_schema = WWW::OpenAPIClient::Object::GeolocationSchema->new(); # GeolocationSchema | 

eval { 
    my $result = $api_instance->geolocation(geolocation_schema => $geolocation_schema);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GEOLOCATIONApi->geolocation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geolocation_schema** | [**GeolocationSchema**](GeolocationSchema.md)|  | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

