# OAISEARCHApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](OAISEARCHApi.md#search) | **GET** /search.php | Forward Geocoding


# **search**
```objc
-(NSURLSessionTask*) searchWithQ: (NSString*) q
    viewbox: (NSString*) viewbox
    limit: (NSNumber*) limit
    acceptLanguage: (NSString*) acceptLanguage
    countrycodes: (NSString*) countrycodes
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Forward Geocoding

The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"token"];


NSString* q = "Statue of Liberty"; // Address to geocode
NSString* viewbox = "-132.84908,47.69382,-70.44674,30.82531"; // The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box.  (optional)
NSNumber* limit = 10; // Limit the number of returned results. Default is 10. (optional) (default to @10)
NSString* acceptLanguage = "en"; // Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native (optional)
NSString* countrycodes = "us"; // Limit search to a list of countries. (optional)

OAISEARCHApi*apiInstance = [[OAISEARCHApi alloc] init];

// Forward Geocoding
[apiInstance searchWithQ:q
              viewbox:viewbox
              limit:limit
              acceptLanguage:acceptLanguage
              countrycodes:countrycodes
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISEARCHApi->search: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Address to geocode | 
 **viewbox** | **NSString***| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] 
 **limit** | **NSNumber***| Limit the number of returned results. Default is 10. | [optional] [default to @10]
 **acceptLanguage** | **NSString***| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **countrycodes** | **NSString***| Limit search to a list of countries. | [optional] 

### Return type

**NSObject***

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

