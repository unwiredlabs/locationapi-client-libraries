# GeolocationResponseSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** | If the request is successful, ok is returned. Otherwise error is returned | [optional] 
**message** | **str** | Any additional information from the server is returned here | [optional] 
**balance** | **int** | This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance | [optional] 
**balance_slots** | **int** | This represents the remaining balance of device slots. Requests that return error are not charged and do not affect balance. If -1 is returned, then observe it as an error while calculating slots balance. This element will only exist if you are on a device plan. | [optional] 
**lat** | **float** | The latitude representing the location | [optional] 
**lon** | **float** | The longitude representing the location | [optional] 
**accuracy** | **int** | The accuracy of the position is returned in meters | [optional] 
**address** | **str** | The physical address of the location | [optional] 
**address_details** | [**AddressDetailsSchema**](AddressDetailsSchema.md) |  | [optional] 
**aged** | **int** | Shown when the location is based on a single measurement or those older than 90 days or is an LAC fallback | [optional] 
**fallback** | [**FallbackSchema**](FallbackSchema.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


