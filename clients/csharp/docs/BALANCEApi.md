# unwired.Api.BALANCEApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Balance**](BALANCEApi.md#balance) | **GET** /balance.php | balance


<a name="balance"></a>
# **Balance**
> Object Balance ()

balance

The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC).

### Example
```csharp
using System;
using System.Diagnostics;
using unwired.Api;
using unwired.Client;
using unwired.Model;

namespace Example
{
    public class BalanceExample
    {
        public void main()
        {
            // Configure API key authorization: token
            Configuration.Default.AddApiKey("token", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("token", "Bearer");

            var apiInstance = new BALANCEApi();

            try
            {
                // balance
                Object result = apiInstance.Balance();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BALANCEApi.Balance: " + e.Message );
            }
        }
    }
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

