# GeolocationResponseSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | If the request is successful, ok is returned. Otherwise error is returned | [optional] 
**message** | **String** | Any additional information from the server is returned here | [optional] 
**balance** | **i64** | This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance | [optional] 
**balance_slots** | **i64** | This represents the remaining balance of device slots. Requests that return error are not charged and do not affect balance. If -1 is returned, then observe it as an error while calculating slots balance. This element will only exist if you are on a device plan. | [optional] 
**lat** | **f64** | The latitude representing the location | [optional] 
**lon** | **f64** | The longitude representing the location | [optional] 
**accuracy** | **i64** | The accuracy of the position is returned in meters | [optional] 
**address** | **String** | The physical address of the location | [optional] 
**address_details** | [***::models::AddressDetailsSchema**](address_details_schema.md) |  | [optional] 
**aged** | **i32** | Shown when the location is based on a single measurement or those older than 90 days or is an LAC fallback | [optional] 
**fallback** | [***::models::FallbackSchema**](fallback_schema.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


