# OAIREVERSEApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](OAIREVERSEApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


# **reverse**
```objc
-(NSURLSessionTask*) reverseWithLat: (NSNumber*) lat
    lon: (NSNumber*) lon
    zoom: (NSNumber*) zoom
    acceptLanguage: (NSString*) acceptLanguage
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"token"];


NSNumber* lat = 17.24; // Latitude of the location to generate an address for.
NSNumber* lon = 74.25; // Longitude of the location to generate an address for.
NSNumber* zoom = 2; // Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building (optional)
NSString* acceptLanguage = "Empire state building"; // Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native (optional)

OAIREVERSEApi*apiInstance = [[OAIREVERSEApi alloc] init];

// Reverse Geocoding
[apiInstance reverseWithLat:lat
              lon:lon
              zoom:zoom
              acceptLanguage:acceptLanguage
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIREVERSEApi->reverse: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **NSNumber***| Latitude of the location to generate an address for. | 
 **lon** | **NSNumber***| Longitude of the location to generate an address for. | 
 **zoom** | **NSNumber***| Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building | [optional] 
 **acceptLanguage** | **NSString***| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 

### Return type

**NSObject***

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

