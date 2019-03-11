part of openapi.api;

class GeolocationSchema {
  
  String token = null;
  /* ID of the device, in case you are in a per-device plan. This could be any unique string such as an IMEI, IMSI, phone number or a hash of any of the previous values, etc. Maximum accepted length is 20 chars, and values should only be alphanumeric (a-z, 0-9) */
  String id = null;
  
  RadioSchema radio = null;
  /* \"Mobile Country Code of your operator’s network represented by an integer (Optional). Range: 0 to 999.\" */
  int mcc = null;
  /* Mobile Network Code of your operator’s network represented by an integer (Optional). Range: 0 to 999. On CDMA, provide the System ID or SID, with range: 1 to 32767. */
  int mnc = null;
  /* An array of cell ID objects */
  List<CellSchema> cells = [];
  /* An array of WiFi objects visible to the device. */
  List<WifiSchema> wifi = [];
  
  FallbackSchema fallbacks = null;
  
  GeolocationAddressSchema address = null;
  /* IP address of device. */
  String ip = null;
  
  BtSchema bt = null;
  GeolocationSchema();

  @override
  String toString() {
    return 'GeolocationSchema[token=$token, id=$id, radio=$radio, mcc=$mcc, mnc=$mnc, cells=$cells, wifi=$wifi, fallbacks=$fallbacks, address=$address, ip=$ip, bt=$bt, ]';
  }

  GeolocationSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    token = json['token'];
    id = json['id'];
    radio = new RadioSchema.fromJson(json['radio']);
    mcc = json['mcc'];
    mnc = json['mnc'];
    cells = CellSchema.listFromJson(json['cells']);
    wifi = WifiSchema.listFromJson(json['wifi']);
    fallbacks = new FallbackSchema.fromJson(json['fallbacks']);
    address = new GeolocationAddressSchema.fromJson(json['address']);
    ip = json['ip'];
    bt = new BtSchema.fromJson(json['bt']);
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'id': id,
      'radio': radio,
      'mcc': mcc,
      'mnc': mnc,
      'cells': cells,
      'wifi': wifi,
      'fallbacks': fallbacks,
      'address': address,
      'ip': ip,
      'bt': bt
    };
  }

  static List<GeolocationSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<GeolocationSchema>() : json.map((value) => new GeolocationSchema.fromJson(value)).toList();
  }

  static Map<String, GeolocationSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, GeolocationSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new GeolocationSchema.fromJson(value));
    }
    return map;
  }
}

