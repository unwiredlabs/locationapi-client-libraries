part of openapi.api;

@Entity()
class BtSchema {
  /// The underlying value of this enum member.
  final int value;

  const BtSchema._internal(this.value);

  /// Specify level of strictness to apply to Borders
  static const BtSchema number0_ = const BtSchema._internal(0);
  /// Specify level of strictness to apply to Borders
  static const BtSchema number1_ = const BtSchema._internal(1);
  /// Specify level of strictness to apply to Borders
  static const BtSchema number2_ = const BtSchema._internal(2);
}

class BtSchemaTypeTransformer extends TypeTransformer<BtSchema> {

  @override
  dynamic encode(BtSchema data) {
    return data.value;
  }

  @override
  BtSchema decode(dynamic data) {
    switch (data) {
      case 0: return BtSchema.number0_;
      case 1: return BtSchema.number1_;
      case 2: return BtSchema.number2_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

