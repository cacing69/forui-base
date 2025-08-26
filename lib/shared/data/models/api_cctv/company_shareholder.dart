import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_shareholder.g.dart';
part 'company_shareholder.freezed.dart';

@freezed
abstract class CompanyShareholder with _$CompanyShareholder {
  const factory CompanyShareholder({
    @Default(null) String? country,
    @Default(null) @BigIntConverter() BigInt? capital,
    @Default(null) String? address,
    @Default(null) String? name,
    @Default(null) String? foreignFlag,
    @Default(null) String? taxNumber,
    @Default(null) String? id,
    @Default(null) String? position,
    @Default(null) String? email,
  }) = _CompanyShareholder;

  factory CompanyShareholder.fromJson(Map<String, dynamic> json) =>
      _$CompanyShareholderFromJson(json);
}
