# unwiredClient::GeolocationResponseSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | If the request is successful, ok is returned. Otherwise error is returned | [optional] 
**message** | **String** | Any additional information from the server is returned here | [optional] 
**balance** | **Integer** | This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance | [optional] 
**balance_slots** | **Integer** | This represents the remaining balance of device slots. Requests that return error are not charged and do not affect balance. If -1 is returned, then observe it as an error while calculating slots balance. This element will only exist if you are on a device plan. | [optional] 
**lat** | **Float** | The latitude representing the location | [optional] 
**lon** | **Float** | The longitude representing the location | [optional] 
**accuracy** | **Integer** | The accuracy of the position is returned in meters | [optional] 
**address** | **String** | The physical address of the location | [optional] 
**address_details** | [**AddressDetailsSchema**](AddressDetailsSchema.md) |  | [optional] 
**aged** | **Integer** | Shown when the location is based on a single measurement or those older than 90 days or is an LAC fallback | [optional] 
**fallback** | [**FallbackSchema**](FallbackSchema.md) |  | [optional] 


