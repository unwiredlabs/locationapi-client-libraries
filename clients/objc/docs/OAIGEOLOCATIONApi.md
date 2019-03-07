# OAIGEOLOCATIONApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geolocation**](OAIGEOLOCATIONApi.md#geolocation) | **POST** /process.php | Geolocation


# **geolocation**
```objc
-(NSURLSessionTask*) geolocationWithGeolocationSchema: (OAIGeolocationSchema*) geolocationSchema
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Geolocation

The Geolocation API helps developers locate IoT, M2M and other connected devices anywhere in the world without GPS. The device first sends the API data about which Cellular networks and WiFi networks it can see nearby. The API then uses Unwired Labs’ large datasets of Cell towers, WiFi networks backed by numerous algorithms to calculate and return the device’s location

### Example 
```objc

OAIGeolocationSchema* geolocationSchema = [[OAIGeolocationSchema alloc] init]; // 

OAIGEOLOCATIONApi*apiInstance = [[OAIGEOLOCATIONApi alloc] init];

// Geolocation
[apiInstance geolocationWithGeolocationSchema:geolocationSchema
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGEOLOCATIONApi->geolocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geolocationSchema** | [**OAIGeolocationSchema***](OAIGeolocationSchema.md)|  | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

