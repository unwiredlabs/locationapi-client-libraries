# openapi.api.BALANCEApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balance**](BALANCEApi.md#balance) | **GET** /balance.php | balance


# **balance**
> Object balance()

balance

The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC).

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: token
//openapi.api.Configuration.apiKey{'token'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'token'} = "Bearer";

var api_instance = new BALANCEApi();

try { 
    var result = api_instance.balance();
    print(result);
} catch (e) {
    print("Exception when calling BALANCEApi->balance: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

