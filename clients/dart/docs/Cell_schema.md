# openapi.model.CellSchema

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lac** | **int** | the Location Area Code of your operator’s network. | [optional] [default to null]
**cid** | **int** | Cell ID | [optional] [default to null]
**radio** | [**RadioSchema**](RadioSchema.md) |  | [optional] [default to null]
**mcc** | **int** | \&quot;Mobile Country Code of your operator’s network represented by an integer (Optional). Range: 0 to 999.\&quot; | [optional] [default to null]
**mnc** | **int** | Mobile Network Code of your operator’s network represented by an integer (Optional). Range: 0 to 999. On CDMA, provide the System ID or SID, with range: 1 to 32767. | [optional] [default to null]
**signal** | **int** | Signal Strength (RSSI) | [optional] [default to null]
**psc** | **int** | Primary Scrambling Code | [optional] [default to null]
**asu** | **int** | Arbitrary Strength Unit | [optional] [default to null]
**ta** | **int** | Timing Advance | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


