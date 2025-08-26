import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone.g.dart';
part 'phone.freezed.dart';

@freezed
abstract class Phone with _$Phone {
  const factory Phone({
    @BigIntConverter() @Default(null) BigInt? id,
    @Default(null) String? registeredDate,
    @Default(null) String? providerName,
  }) = _Phone;

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);
}
