part of openapi.api;

class AddressDetailsSchema {
  
  String area = null;
  
  String locality = null;
  
  String district = null;
  
  String county = null;
  
  String city = null;
  
  String state = null;
  
  String country = null;
  
  String countryCode = null;
  
  String postalCode = null;
  AddressDetailsSchema();

  @override
  String toString() {
    return 'AddressDetailsSchema[area=$area, locality=$locality, district=$district, county=$county, city=$city, state=$state, country=$country, countryCode=$countryCode, postalCode=$postalCode, ]';
  }

  AddressDetailsSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    area = json['area'];
    locality = json['locality'];
    district = json['district'];
    county = json['county'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    countryCode = json['country_code'];
    postalCode = json['postal_code'];
  }

  Map<String, dynamic> toJson() {
    return {
      'area': area,
      'locality': locality,
      'district': district,
      'county': county,
      'city': city,
      'state': state,
      'country': country,
      'country_code': countryCode,
      'postal_code': postalCode
    };
  }

  static List<AddressDetailsSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<AddressDetailsSchema>() : json.map((value) => new AddressDetailsSchema.fromJson(value)).toList();
  }

  static Map<String, AddressDetailsSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, AddressDetailsSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new AddressDetailsSchema.fromJson(value));
    }
    return map;
  }
}

