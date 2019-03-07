part of openapi.api;

class GeolocationResponseSchema {
  /* If the request is successful, ok is returned. Otherwise error is returned */
  String status = null;
  /* Any additional information from the server is returned here */
  String message = null;
  /* This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance */
  int balance = null;
  /* This represents the remaining balance of device slots. Requests that return error are not charged and do not affect balance. If -1 is returned, then observe it as an error while calculating slots balance. This element will only exist if you are on a device plan. */
  int balanceSlots = null;
  /* The latitude representing the location */
  double lat = null;
  /* The longitude representing the location */
  double lon = null;
  /* The accuracy of the position is returned in meters */
  int accuracy = null;
  /* The physical address of the location */
  String address = null;
  
  AddressDetailsSchema addressDetails = null;
  /* Shown when the location is based on a single measurement or those older than 90 days or is an LAC fallback */
  int aged = null;
  
  FallbackSchema fallback = null;
  GeolocationResponseSchema();

  @override
  String toString() {
    return 'GeolocationResponseSchema[status=$status, message=$message, balance=$balance, balanceSlots=$balanceSlots, lat=$lat, lon=$lon, accuracy=$accuracy, address=$address, addressDetails=$addressDetails, aged=$aged, fallback=$fallback, ]';
  }

  GeolocationResponseSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
    message = json['message'];
    balance = json['balance'];
    balanceSlots = json['balance_slots'];
    lat = json['lat'];
    lon = json['lon'];
    accuracy = json['accuracy'];
    address = json['address'];
    addressDetails = new AddressDetailsSchema.fromJson(json['address_details']);
    aged = json['aged'];
    fallback = new FallbackSchema.fromJson(json['fallback']);
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'balance': balance,
      'balance_slots': balanceSlots,
      'lat': lat,
      'lon': lon,
      'accuracy': accuracy,
      'address': address,
      'address_details': addressDetails,
      'aged': aged,
      'fallback': fallback
    };
  }

  static List<GeolocationResponseSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<GeolocationResponseSchema>() : json.map((value) => new GeolocationResponseSchema.fromJson(value)).toList();
  }

  static Map<String, GeolocationResponseSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, GeolocationResponseSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new GeolocationResponseSchema.fromJson(value));
    }
    return map;
  }
}

