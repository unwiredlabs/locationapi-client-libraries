# unwired\GEOLOCATIONApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geolocation**](GEOLOCATIONApi.md#geolocation) | **POST** /process.php | Geolocation


# **geolocation**
> object geolocation($geolocation_schema)

Geolocation

The Geolocation API helps developers locate IoT, M2M and other connected devices anywhere in the world without GPS. The device first sends the API data about which Cellular networks and WiFi networks it can see nearby. The API then uses Unwired Labs’ large datasets of Cell towers, WiFi networks backed by numerous algorithms to calculate and return the device’s location

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new unwired\Api\GEOLOCATIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$geolocation_schema = new \unwired\Model\GeolocationSchema(); // \unwired\Model\GeolocationSchema | 

try {
    $result = $apiInstance->geolocation($geolocation_schema);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GEOLOCATIONApi->geolocation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geolocation_schema** | [**\unwired\Model\GeolocationSchema**](../Model/GeolocationSchema.md)|  |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

