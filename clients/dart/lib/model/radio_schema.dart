part of openapi.api;

@Entity()
class RadioSchema {
  /// The underlying value of this enum member.
  final String value;

  const RadioSchema._internal(this.value);

  /// Radio type of the device. Supported values are ‘gsm’, ‘cdma’, ‘umts’ and ‘lte’. This field should be included for more accurate results.
  static const RadioSchema gsm_ = const RadioSchema._internal("\"gsm\"");
  /// Radio type of the device. Supported values are ‘gsm’, ‘cdma’, ‘umts’ and ‘lte’. This field should be included for more accurate results.
  static const RadioSchema utms_ = const RadioSchema._internal("\"utms\"");
  /// Radio type of the device. Supported values are ‘gsm’, ‘cdma’, ‘umts’ and ‘lte’. This field should be included for more accurate results.
  static const RadioSchema cdma_ = const RadioSchema._internal("\"cdma\"");
  /// Radio type of the device. Supported values are ‘gsm’, ‘cdma’, ‘umts’ and ‘lte’. This field should be included for more accurate results.
  static const RadioSchema lte_ = const RadioSchema._internal("\"lte\"");
}

class RadioSchemaTypeTransformer extends TypeTransformer<RadioSchema> {

  @override
  dynamic encode(RadioSchema data) {
    return data.value;
  }

  @override
  RadioSchema decode(dynamic data) {
    switch (data) {
      case "\"gsm\"": return RadioSchema.gsm_;
      case "\"utms\"": return RadioSchema.utms_;
      case "\"cdma\"": return RadioSchema.cdma_;
      case "\"lte\"": return RadioSchema.lte_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

