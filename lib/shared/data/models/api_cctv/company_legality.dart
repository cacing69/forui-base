import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_legality.g.dart';
part 'company_legality.freezed.dart';

@freezed
abstract class CompanyLegality with _$CompanyLegality {
  const factory CompanyLegality({
    @Default(null) String? date,
    @Default(null) String? address,
    @Default(null) String? phone,
    @Default(null) String? name,
    @Default(null) String? type,
  }) = _CompanyLegality;

  factory CompanyLegality.fromJson(Map<String, dynamic> json) =>
      _$CompanyLegalityFromJson(json);
}
