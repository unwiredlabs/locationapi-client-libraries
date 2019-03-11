# WWW::OpenAPIClient::BALANCEApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::BALANCEApi;
```

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balance**](BALANCEApi.md#balance) | **GET** /balance.php | balance


# **balance**
> object balance()

balance

The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC).

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BALANCEApi;
my $api_instance = WWW::OpenAPIClient::BALANCEApi->new(

    # Configure API key authorization: token
    api_key => {'token' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'token' => 'Bearer'},
);


eval { 
    my $result = $api_instance->balance();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BALANCEApi->balance: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

