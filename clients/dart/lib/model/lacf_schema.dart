part of openapi.api;

@Entity()
class LacfSchema {
  /// The underlying value of this enum member.
  final int value;

  const LacfSchema._internal(this.value);

  /// Enable LAC fallback. If we are unable to locate a cell, we will return an approzimate location based on nearby cells in our database.
  static const LacfSchema number0_ = const LacfSchema._internal(0);
  /// Enable LAC fallback. If we are unable to locate a cell, we will return an approzimate location based on nearby cells in our database.
  static const LacfSchema number1_ = const LacfSchema._internal(1);
  /// Enable LAC fallback. If we are unable to locate a cell, we will return an approzimate location based on nearby cells in our database.
  static const LacfSchema number2_ = const LacfSchema._internal(2);
}

class LacfSchemaTypeTransformer extends TypeTransformer<LacfSchema> {

  @override
  dynamic encode(LacfSchema data) {
    return data.value;
  }

  @override
  LacfSchema decode(dynamic data) {
    switch (data) {
      case 0: return LacfSchema.number0_;
      case 1: return LacfSchema.number1_;
      case 2: return LacfSchema.number2_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

