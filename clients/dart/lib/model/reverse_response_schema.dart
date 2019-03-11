part of openapi.api;

class ReverseResponseSchema {
  /* If the request is successful, ok is returned. Otherwise error is returned */
  String status = null;
  /* Balance left in the account */
  int balance = null;
  
  AddressSchema address = null;
  ReverseResponseSchema();

  @override
  String toString() {
    return 'ReverseResponseSchema[status=$status, balance=$balance, address=$address, ]';
  }

  ReverseResponseSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
    balance = json['balance'];
    address = new AddressSchema.fromJson(json['address']);
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'balance': balance,
      'address': address
    };
  }

  static List<ReverseResponseSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReverseResponseSchema>() : json.map((value) => new ReverseResponseSchema.fromJson(value)).toList();
  }

  static Map<String, ReverseResponseSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ReverseResponseSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ReverseResponseSchema.fromJson(value));
    }
    return map;
  }
}

