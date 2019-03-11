part of openapi.api;

class ErrorSchema {
  /* If the request is successful, ok is returned. Otherwise error is returned */
  String status = null;
  /* Any additional information from the server is returned here */
  String message = null;
  ErrorSchema();

  @override
  String toString() {
    return 'ErrorSchema[status=$status, message=$message, ]';
  }

  ErrorSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message
    };
  }

  static List<ErrorSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorSchema>() : json.map((value) => new ErrorSchema.fromJson(value)).toList();
  }

  static Map<String, ErrorSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ErrorSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ErrorSchema.fromJson(value));
    }
    return map;
  }
}

