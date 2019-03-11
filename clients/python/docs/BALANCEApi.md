# unwired.BALANCEApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balance**](BALANCEApi.md#balance) | **GET** /balance.php | balance


# **balance**
> object balance()

balance

The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC).

### Example

* Api Key Authentication (token): 
```python
from __future__ import print_function
import time
import unwired
from unwired.rest import ApiException
from pprint import pprint

# Configure API key authorization: token
configuration = unwired.Configuration()
configuration.api_key['token'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['token'] = 'Bearer'

# create an instance of the API class
api_instance = unwired.BALANCEApi(unwired.ApiClient(configuration))

try:
    # balance
    api_response = api_instance.balance()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BALANCEApi->balance: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

