# unwiredClient::BALANCEApi

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balance**](BALANCEApi.md#balance) | **GET** /balance.php | balance


# **balance**
> Object balance

balance

The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC).

### Example
```ruby
# load the gem
require 'unwired-ruby-client'
# setup authorization
unwiredClient.configure do |config|
  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['token'] = 'Bearer'
end

api_instance = unwiredClient::BALANCEApi.new

begin
  #balance
  result = api_instance.balance
  p result
rescue unwiredClient::ApiError => e
  puts "Exception when calling BALANCEApi->balance: #{e}"
end
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



