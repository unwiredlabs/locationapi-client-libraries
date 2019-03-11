part of openapi.api;

class WifiSchema {
  /* Basic Service Set Identifier or MAC address of the Access Point. Typical format of a MAC address is xx-xx-xx-xx-xx-xx. However, the delimiter can be any of these when sent to the API: : or - or . */
  String bssid = null;
  /* Channel the WiFi network is operating in (optional) */
  int channel = null;
  /* Frequency the WiFi network is operating in (MHz) (optional) */
  int frequency = null;
  /* Signal Strength (RSSI) */
  int signal = null;
  /* The current signal to noise ratio, measured in dB (optional) */
  int signalToNoiseRatio = null;
  WifiSchema();

  @override
  String toString() {
    return 'WifiSchema[bssid=$bssid, channel=$channel, frequency=$frequency, signal=$signal, signalToNoiseRatio=$signalToNoiseRatio, ]';
  }

  WifiSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    bssid = json['bssid'];
    channel = json['channel'];
    frequency = json['frequency'];
    signal = json['signal'];
    signalToNoiseRatio = json['signalToNoiseRatio'];
  }

  Map<String, dynamic> toJson() {
    return {
      'bssid': bssid,
      'channel': channel,
      'frequency': frequency,
      'signal': signal,
      'signalToNoiseRatio': signalToNoiseRatio
    };
  }

  static List<WifiSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<WifiSchema>() : json.map((value) => new WifiSchema.fromJson(value)).toList();
  }

  static Map<String, WifiSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, WifiSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new WifiSchema.fromJson(value));
    }
    return map;
  }
}

