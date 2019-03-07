# GeolocationApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geolocation**](GeolocationApi.md#geolocation) | **POST** /process.php | Geolocation


<a name="geolocation"></a>
# **geolocation**
> Object geolocation(geolocationSchema)

Geolocation

The Geolocation API helps developers locate IoT, M2M and other connected devices anywhere in the world without GPS. The device first sends the API data about which Cellular networks and WiFi networks it can see nearby. The API then uses Unwired Labs’ large datasets of Cell towers, WiFi networks backed by numerous algorithms to calculate and return the device’s location

### Example
```java
// Import classes:
//import unwired.ApiException;
//import com.unwired.client.api.GeolocationApi;


GeolocationApi apiInstance = new GeolocationApi();
GeolocationSchema geolocationSchema = new GeolocationSchema(); // GeolocationSchema | 
try {
    Object result = apiInstance.geolocation(geolocationSchema);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GeolocationApi#geolocation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geolocationSchema** | [**GeolocationSchema**](GeolocationSchema.md)|  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

