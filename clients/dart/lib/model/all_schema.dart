part of openapi.api;

@Entity()
class AllSchema {
  /// The underlying value of this enum member.
  final int value;

  const AllSchema._internal(this.value);

  /// Enable or disable all fallbacks.
  static const AllSchema number0_ = const AllSchema._internal(0);
  /// Enable or disable all fallbacks.
  static const AllSchema number1_ = const AllSchema._internal(1);
}

class AllSchemaTypeTransformer extends TypeTransformer<AllSchema> {

  @override
  dynamic encode(AllSchema data) {
    return data.value;
  }

  @override
  AllSchema decode(dynamic data) {
    switch (data) {
      case 0: return AllSchema.number0_;
      case 1: return AllSchema.number1_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

