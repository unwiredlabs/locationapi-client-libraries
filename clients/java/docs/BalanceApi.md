# BalanceApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balance**](BalanceApi.md#balance) | **GET** /balance.php | balance


<a name="balance"></a>
# **balance**
> Object balance()

balance

The Balance API provides a count of request credits left in the user&#39;s account for the day. Balance is reset at midnight UTC everyday (00:00 UTC).

### Example
```java
// Import classes:
//import unwired.ApiClient;
//import unwired.ApiException;
//import unwired.Configuration;
//import unwired.auth.*;
//import com.unwired.client.api.BalanceApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: token
ApiKeyAuth token = (ApiKeyAuth) defaultClient.getAuthentication("token");
token.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//token.setApiKeyPrefix("Token");

BalanceApi apiInstance = new BalanceApi();
try {
    Object result = apiInstance.balance();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BalanceApi#balance");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

