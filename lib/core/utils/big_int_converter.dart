import 'package:json_annotation/json_annotation.dart';

class BigIntConverter implements JsonConverter<BigInt?, dynamic> {
  const BigIntConverter();

  @override
  BigInt? fromJson(dynamic json) {
    if (json == null) return null;
    return BigInt.tryParse(json.toString());
  }

  @override
  dynamic toJson(BigInt? object) {
    return object?.toString();
  }
}
