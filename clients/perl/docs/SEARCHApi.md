# WWW::OpenAPIClient::SEARCHApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::SEARCHApi;
```

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](SEARCHApi.md#search) | **GET** /search.php | Forward Geocoding


# **search**
> object search(q => $q, viewbox => $viewbox, limit => $limit, accept_language => $accept_language, countrycodes => $countrycodes)

Forward Geocoding

The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SEARCHApi;
my $api_instance = WWW::OpenAPIClient::SEARCHApi->new(

    # Configure API key authorization: token
    api_key => {'token' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'token' => 'Bearer'},
);

my $q = "Statue of Liberty"; # string | Address to geocode
my $viewbox = "-132.84908,47.69382,-70.44674,30.82531"; # string | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box. 
my $limit = 10; # int | Limit the number of returned results. Default is 10.
my $accept_language = "en"; # string | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
my $countrycodes = "us"; # string | Limit search to a list of countries.

eval { 
    my $result = $api_instance->search(q => $q, viewbox => $viewbox, limit => $limit, accept_language => $accept_language, countrycodes => $countrycodes);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SEARCHApi->search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Address to geocode | 
 **viewbox** | **string**| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] 
 **limit** | **int**| Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **accept_language** | **string**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **countrycodes** | **string**| Limit search to a list of countries. | [optional] 

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

