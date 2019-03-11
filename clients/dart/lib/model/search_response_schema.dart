part of openapi.api;

class SearchResponseSchema {
  /* If the request is successful, ok is returned. Otherwise error is returned */
  String status = null;
  /* Balance left in the account */
  num balance = null;
  /* Array of Address objects found for the search query */
  List<AddressSchema> addresses = [];
  SearchResponseSchema();

  @override
  String toString() {
    return 'SearchResponseSchema[status=$status, balance=$balance, addresses=$addresses, ]';
  }

  SearchResponseSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
    balance = json['balance'];
    addresses = AddressSchema.listFromJson(json['addresses']);
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'balance': balance,
      'addresses': addresses
    };
  }

  static List<SearchResponseSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<SearchResponseSchema>() : json.map((value) => new SearchResponseSchema.fromJson(value)).toList();
  }

  static Map<String, SearchResponseSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, SearchResponseSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new SearchResponseSchema.fromJson(value));
    }
    return map;
  }
}

