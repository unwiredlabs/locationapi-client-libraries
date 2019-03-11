# GeolocationSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Token** | **string** |  | [optional] 
**Id** | **string** | ID of the device, in case you are in a per-device plan. This could be any unique string such as an IMEI, IMSI, phone number or a hash of any of the previous values, etc. Maximum accepted length is 20 chars, and values should only be alphanumeric (a-z, 0-9) | [optional] 
**Radio** | [**RadioSchema**](radio_schema.md) |  | [optional] 
**Mcc** | **int64** | \&quot;Mobile Country Code of your operator’s network represented by an integer (Optional). Range: 0 to 999.\&quot; | [optional] 
**Mnc** | **int64** | Mobile Network Code of your operator’s network represented by an integer (Optional). Range: 0 to 999. On CDMA, provide the System ID or SID, with range: 1 to 32767. | [optional] 
**Cells** | [**[]CellSchema**](cell_schema.md) | An array of cell ID objects | [optional] 
**Wifi** | [**[]WifiSchema**](wifi_schema.md) | An array of WiFi objects visible to the device. | [optional] 
**Fallbacks** | [**FallbackSchema**](fallback_schema.md) |  | [optional] 
**Address** | [**GeolocationAddressSchema**](geolocation_address_schema.md) |  | [optional] 
**Ip** | **string** | IP address of device. | [optional] 
**Bt** | [**BtSchema**](bt_schema.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


