# WWW::OpenAPIClient::REVERSEApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::REVERSEApi;
```

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](REVERSEApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


# **reverse**
> object reverse(lat => $lat, lon => $lon, zoom => $zoom, accept_language => $accept_language)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::REVERSEApi;
my $api_instance = WWW::OpenAPIClient::REVERSEApi->new(

    # Configure API key authorization: token
    api_key => {'token' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'token' => 'Bearer'},
);

my $lat = 17.24; # double | Latitude of the location to generate an address for.
my $lon = 74.25; # double | Longitude of the location to generate an address for.
my $zoom = 2; # int | Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building
my $accept_language = "Empire state building"; # string | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native

eval { 
    my $result = $api_instance->reverse(lat => $lat, lon => $lon, zoom => $zoom, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling REVERSEApi->reverse: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**| Latitude of the location to generate an address for. | 
 **lon** | **double**| Longitude of the location to generate an address for. | 
 **zoom** | **int**| Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building | [optional] 
 **accept_language** | **string**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

