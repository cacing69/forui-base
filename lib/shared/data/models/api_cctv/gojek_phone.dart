import 'package:freezed_annotation/freezed_annotation.dart';

part 'gojek_phone.g.dart';
part 'gojek_phone.freezed.dart';

@freezed
abstract class GojekPhone with _$GojekPhone {
  const factory GojekPhone({
    @Default(null) @JsonKey(name: '\$numberLong') String? numberLong,
  }) = _GojekPhone;

  factory GojekPhone.fromJson(Map<String, dynamic> json) =>
      _$GojekPhoneFromJson(json);
}
