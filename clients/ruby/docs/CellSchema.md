# unwiredClient::CellSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lac** | **Integer** | the Location Area Code of your operator’s network. | [optional] 
**cid** | **Integer** | Cell ID | [optional] 
**radio** | [**RadioSchema**](RadioSchema.md) |  | [optional] 
**mcc** | **Integer** | \&quot;Mobile Country Code of your operator’s network represented by an integer (Optional). Range: 0 to 999.\&quot; | [optional] 
**mnc** | **Integer** | Mobile Network Code of your operator’s network represented by an integer (Optional). Range: 0 to 999. On CDMA, provide the System ID or SID, with range: 1 to 32767. | [optional] 
**signal** | **Integer** | Signal Strength (RSSI) | [optional] 
**psc** | **Integer** | Primary Scrambling Code | [optional] 
**asu** | **Integer** | Arbitrary Strength Unit | [optional] 
**ta** | **Integer** | Timing Advance | [optional] 


