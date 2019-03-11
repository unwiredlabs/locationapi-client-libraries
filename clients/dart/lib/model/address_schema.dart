part of openapi.api;

class AddressSchema {
  /* Latitude of the given location (decimal) */
  String lat = null;
  /* Longitude of the given location (decimal) */
  String lon = null;
  /* Matched Address name for the given location */
  String displayName = null;
  /* House Number */
  String houseNumber = null;
  /* Road Name */
  String road = null;
  /* Neighbourhood */
  String neighborhood = null;
  /* Suburb */
  String suburb = null;
  /* City name (normalized form of city, town, village, hamlet) */
  String city = null;
  /* County name (normalized form of county, state_district) */
  String county = null;
  /* Country name */
  String country = null;
  /* Country code */
  String countryCode = null;
  /* Postal code */
  String postalCode = null;
  AddressSchema();

  @override
  String toString() {
    return 'AddressSchema[lat=$lat, lon=$lon, displayName=$displayName, houseNumber=$houseNumber, road=$road, neighborhood=$neighborhood, suburb=$suburb, city=$city, county=$county, country=$country, countryCode=$countryCode, postalCode=$postalCode, ]';
  }

  AddressSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lat = json['lat'];
    lon = json['lon'];
    displayName = json['display_name'];
    houseNumber = json['house_number'];
    road = json['road'];
    neighborhood = json['neighborhood'];
    suburb = json['suburb'];
    city = json['city'];
    county = json['county'];
    country = json['country'];
    countryCode = json['country_code'];
    postalCode = json['postal_code'];
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lon': lon,
      'display_name': displayName,
      'house_number': houseNumber,
      'road': road,
      'neighborhood': neighborhood,
      'suburb': suburb,
      'city': city,
      'county': county,
      'country': country,
      'country_code': countryCode,
      'postal_code': postalCode
    };
  }

  static List<AddressSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<AddressSchema>() : json.map((value) => new AddressSchema.fromJson(value)).toList();
  }

  static Map<String, AddressSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, AddressSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new AddressSchema.fromJson(value));
    }
    return map;
  }
}

