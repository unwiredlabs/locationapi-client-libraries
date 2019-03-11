# CellSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lac** | **i64** | the Location Area Code of your operator’s network. | [optional] 
**cid** | **i64** | Cell ID | [optional] 
**radio** | [***::models::RadioSchema**](radio_schema.md) |  | [optional] 
**mcc** | **i64** | \"Mobile Country Code of your operator’s network represented by an integer (Optional). Range: 0 to 999.\" | [optional] 
**mnc** | **i64** | Mobile Network Code of your operator’s network represented by an integer (Optional). Range: 0 to 999. On CDMA, provide the System ID or SID, with range: 1 to 32767. | [optional] 
**signal** | **i64** | Signal Strength (RSSI) | [optional] 
**psc** | **i64** | Primary Scrambling Code | [optional] 
**asu** | **i64** | Arbitrary Strength Unit | [optional] 
**ta** | **i64** | Timing Advance | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


