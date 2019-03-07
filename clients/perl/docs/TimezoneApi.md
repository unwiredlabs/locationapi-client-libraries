# WWW::OpenAPIClient::TimezoneApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::TimezoneApi;
```

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**timezone**](TimezoneApi.md#timezone) | **GET** /timezone.php | timezone


# **timezone**
> object timezone(lat => $lat, lon => $lon)

timezone

The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TimezoneApi;
my $api_instance = WWW::OpenAPIClient::TimezoneApi->new(

    # Configure API key authorization: token
    api_key => {'token' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'token' => 'Bearer'},
);

my $lat = 40.6892474; # double | lattitude of the location
my $lon = -74.0445404280149; # double | longitude of location

eval { 
    my $result = $api_instance->timezone(lat => $lat, lon => $lon);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TimezoneApi->timezone: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**| lattitude of the location | 
 **lon** | **double**| longitude of location | 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

