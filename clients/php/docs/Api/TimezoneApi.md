# unwired\TimezoneApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**timezone**](TimezoneApi.md#timezone) | **GET** /timezone.php | timezone


# **timezone**
> object timezone($lat, $lon)

timezone

The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: token
$config = unwired\Configuration::getDefaultConfiguration()->setApiKey('token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = unwired\Configuration::getDefaultConfiguration()->setApiKeyPrefix('token', 'Bearer');

$apiInstance = new unwired\Api\TimezoneApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$lat = 40.6892474; // double | lattitude of the location
$lon = -74.0445404280149; // double | longitude of location

try {
    $result = $apiInstance->timezone($lat, $lon);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TimezoneApi->timezone: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**| lattitude of the location |
 **lon** | **double**| longitude of location |

### Return type

**object**

### Authorization

[token](../../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

