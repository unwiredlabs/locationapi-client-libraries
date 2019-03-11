# openapi.model.GeolocationResponseSchema

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | If the request is successful, ok is returned. Otherwise error is returned | [optional] [default to null]
**message** | **String** | Any additional information from the server is returned here | [optional] [default to null]
**balance** | **int** | This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance | [optional] [default to null]
**balanceSlots** | **int** | This represents the remaining balance of device slots. Requests that return error are not charged and do not affect balance. If -1 is returned, then observe it as an error while calculating slots balance. This element will only exist if you are on a device plan. | [optional] [default to null]
**lat** | **double** | The latitude representing the location | [optional] [default to null]
**lon** | **double** | The longitude representing the location | [optional] [default to null]
**accuracy** | **int** | The accuracy of the position is returned in meters | [optional] [default to null]
**address** | **String** | The physical address of the location | [optional] [default to null]
**addressDetails** | [**AddressDetailsSchema**](AddressDetailsSchema.md) |  | [optional] [default to null]
**aged** | **int** | Shown when the location is based on a single measurement or those older than 90 days or is an LAC fallback | [optional] [default to null]
**fallback** | [**FallbackSchema**](FallbackSchema.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


