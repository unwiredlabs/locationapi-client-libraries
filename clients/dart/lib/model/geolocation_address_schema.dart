part of openapi.api;

@Entity()
class GeolocationAddressSchema {
  /// The underlying value of this enum member.
  final int value;

  const GeolocationAddressSchema._internal(this.value);

  /// The physical address of the returned location
  static const GeolocationAddressSchema number0_ = const GeolocationAddressSchema._internal(0);
  /// The physical address of the returned location
  static const GeolocationAddressSchema number1_ = const GeolocationAddressSchema._internal(1);
  /// The physical address of the returned location
  static const GeolocationAddressSchema number2_ = const GeolocationAddressSchema._internal(2);
}

class GeolocationAddressSchemaTypeTransformer extends TypeTransformer<GeolocationAddressSchema> {

  @override
  dynamic encode(GeolocationAddressSchema data) {
    return data.value;
  }

  @override
  GeolocationAddressSchema decode(dynamic data) {
    switch (data) {
      case 0: return GeolocationAddressSchema.number0_;
      case 1: return GeolocationAddressSchema.number1_;
      case 2: return GeolocationAddressSchema.number2_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

