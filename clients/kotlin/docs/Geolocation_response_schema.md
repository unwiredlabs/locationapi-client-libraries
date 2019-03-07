
# GeolocationResponseSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **kotlin.String** | If the request is successful, ok is returned. Otherwise error is returned |  [optional]
**message** | **kotlin.String** | Any additional information from the server is returned here |  [optional]
**balance** | **kotlin.Long** | This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance |  [optional]
**balanceSlots** | **kotlin.Long** | This represents the remaining balance of device slots. Requests that return error are not charged and do not affect balance. If -1 is returned, then observe it as an error while calculating slots balance. This element will only exist if you are on a device plan. |  [optional]
**lat** | **kotlin.Double** | The latitude representing the location |  [optional]
**lon** | **kotlin.Double** | The longitude representing the location |  [optional]
**accuracy** | **kotlin.Long** | The accuracy of the position is returned in meters |  [optional]
**address** | **kotlin.String** | The physical address of the location |  [optional]
**addressDetails** | [**AddressDetailsSchema**](AddressDetailsSchema.md) |  |  [optional]
**aged** | **kotlin.Int** | Shown when the location is based on a single measurement or those older than 90 days or is an LAC fallback |  [optional]
**fallback** | [**FallbackSchema**](FallbackSchema.md) |  |  [optional]



