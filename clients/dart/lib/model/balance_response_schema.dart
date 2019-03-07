part of openapi.api;

class BalanceResponseSchema {
  /* If the request is successful, ok is returned. Otherwise error is returned */
  String status = null;
  /* Remaining balance left in the account for geolocation requests */
  int balanceGeolocation = null;
  /* Remaining balance left in the account for geocoding requests */
  int balanceGeocoding = null;
  BalanceResponseSchema();

  @override
  String toString() {
    return 'BalanceResponseSchema[status=$status, balanceGeolocation=$balanceGeolocation, balanceGeocoding=$balanceGeocoding, ]';
  }

  BalanceResponseSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
    balanceGeolocation = json['balance_geolocation'];
    balanceGeocoding = json['balance_geocoding'];
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'balance_geolocation': balanceGeolocation,
      'balance_geocoding': balanceGeocoding
    };
  }

  static List<BalanceResponseSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<BalanceResponseSchema>() : json.map((value) => new BalanceResponseSchema.fromJson(value)).toList();
  }

  static Map<String, BalanceResponseSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, BalanceResponseSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new BalanceResponseSchema.fromJson(value));
    }
    return map;
  }
}

