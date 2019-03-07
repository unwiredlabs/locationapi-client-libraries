# openapi.model.WifiSchema

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bssid** | **String** | Basic Service Set Identifier or MAC address of the Access Point. Typical format of a MAC address is xx-xx-xx-xx-xx-xx. However, the delimiter can be any of these when sent to the API: : or - or . | [optional] [default to null]
**channel** | **int** | Channel the WiFi network is operating in (optional) | [optional] [default to null]
**frequency** | **int** | Frequency the WiFi network is operating in (MHz) (optional) | [optional] [default to null]
**signal** | **int** | Signal Strength (RSSI) | [optional] [default to null]
**signalToNoiseRatio** | **int** | The current signal to noise ratio, measured in dB (optional) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


