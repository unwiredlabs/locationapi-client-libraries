part of openapi.api;

class TimezoneResponseSchema {
  /* If the request is successful, ok is returned. Otherwise error is returned */
  String status = null;
  /* Balance left in the account */
  int balance = null;
  
  TimezoneSchema timezone = null;
  TimezoneResponseSchema();

  @override
  String toString() {
    return 'TimezoneResponseSchema[status=$status, balance=$balance, timezone=$timezone, ]';
  }

  TimezoneResponseSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
    balance = json['balance'];
    timezone = new TimezoneSchema.fromJson(json['timezone']);
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'balance': balance,
      'timezone': timezone
    };
  }

  static List<TimezoneResponseSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<TimezoneResponseSchema>() : json.map((value) => new TimezoneResponseSchema.fromJson(value)).toList();
  }

  static Map<String, TimezoneResponseSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, TimezoneResponseSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new TimezoneResponseSchema.fromJson(value));
    }
    return map;
  }
}

