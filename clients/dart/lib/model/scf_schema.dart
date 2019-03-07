part of openapi.api;

@Entity()
class ScfSchema {
  /// The underlying value of this enum member.
  final int value;

  const ScfSchema._internal(this.value);

  /// Enable Short CID fallback. Adds support for devices that can only see 16-bit (short) CID of an UMTS 28-bit UTRAN CID.
  static const ScfSchema number0_ = const ScfSchema._internal(0);
  /// Enable Short CID fallback. Adds support for devices that can only see 16-bit (short) CID of an UMTS 28-bit UTRAN CID.
  static const ScfSchema number1_ = const ScfSchema._internal(1);
}

class ScfSchemaTypeTransformer extends TypeTransformer<ScfSchema> {

  @override
  dynamic encode(ScfSchema data) {
    return data.value;
  }

  @override
  ScfSchema decode(dynamic data) {
    switch (data) {
      case 0: return ScfSchema.number0_;
      case 1: return ScfSchema.number1_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

