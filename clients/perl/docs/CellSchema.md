# WWW::OpenAPIClient::Object::CellSchema

## Load the model package
```perl
use WWW::OpenAPIClient::Object::CellSchema;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lac** | **int** | the Location Area Code of your operator’s network. | [optional] 
**cid** | **int** | Cell ID | [optional] 
**radio** | [**RadioSchema**](RadioSchema.md) |  | [optional] 
**mcc** | **int** | \&quot;Mobile Country Code of your operator’s network represented by an integer (Optional). Range: 0 to 999.\&quot; | [optional] 
**mnc** | **int** | Mobile Network Code of your operator’s network represented by an integer (Optional). Range: 0 to 999. On CDMA, provide the System ID or SID, with range: 1 to 32767. | [optional] 
**signal** | **int** | Signal Strength (RSSI) | [optional] 
**psc** | **int** | Primary Scrambling Code | [optional] 
**asu** | **int** | Arbitrary Strength Unit | [optional] 
**ta** | **int** | Timing Advance | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


