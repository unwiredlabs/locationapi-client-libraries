
# SearchResponseSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | If the request is successful, ok is returned. Otherwise error is returned |  [optional]
**balance** | [**BigDecimal**](BigDecimal.md) | Balance left in the account |  [optional]
**addresses** | [**List&lt;AddressSchema&gt;**](AddressSchema.md) | Array of Address objects found for the search query |  [optional]



