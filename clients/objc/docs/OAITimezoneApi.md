# OAITimezoneApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**timezone**](OAITimezoneApi.md#timezone) | **GET** /timezone.php | timezone


# **timezone**
```objc
-(NSURLSessionTask*) timezoneWithLat: (NSNumber*) lat
    lon: (NSNumber*) lon
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

timezone

The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"token"];


NSNumber* lat = 40.6892474; // lattitude of the location
NSNumber* lon = -74.0445404280149; // longitude of location

OAITimezoneApi*apiInstance = [[OAITimezoneApi alloc] init];

// timezone
[apiInstance timezoneWithLat:lat
              lon:lon
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITimezoneApi->timezone: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **NSNumber***| lattitude of the location | 
 **lon** | **NSNumber***| longitude of location | 

### Return type

**NSObject***

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

