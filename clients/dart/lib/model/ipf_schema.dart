part of openapi.api;

@Entity()
class IpfSchema {
  /// The underlying value of this enum member.
  final int value;

  const IpfSchema._internal(this.value);

  /// Enable IP address fallback. Specify IP address of the device in the “ip” field if it’s different from the device making the API call.
  static const IpfSchema number0_ = const IpfSchema._internal(0);
  /// Enable IP address fallback. Specify IP address of the device in the “ip” field if it’s different from the device making the API call.
  static const IpfSchema number1_ = const IpfSchema._internal(1);
}

class IpfSchemaTypeTransformer extends TypeTransformer<IpfSchema> {

  @override
  dynamic encode(IpfSchema data) {
    return data.value;
  }

  @override
  IpfSchema decode(dynamic data) {
    switch (data) {
      case 0: return IpfSchema.number0_;
      case 1: return IpfSchema.number1_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

