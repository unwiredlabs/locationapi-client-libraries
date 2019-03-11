part of openapi.api;

class GeolocationErrorSchema {
  /* If the request is successful, ok is returned. Otherwise error is returned */
  String status = null;
  /* Any additional information from the server is returned here */
  String message = null;
  /* This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance. */
  int balance = null;
  GeolocationErrorSchema();

  @override
  String toString() {
    return 'GeolocationErrorSchema[status=$status, message=$message, balance=$balance, ]';
  }

  GeolocationErrorSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
    message = json['message'];
    balance = json['balance'];
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'balance': balance
    };
  }

  static List<GeolocationErrorSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<GeolocationErrorSchema>() : json.map((value) => new GeolocationErrorSchema.fromJson(value)).toList();
  }

  static Map<String, GeolocationErrorSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, GeolocationErrorSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new GeolocationErrorSchema.fromJson(value));
    }
    return map;
  }
}

