import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_query.g.dart';
part 'company_query.freezed.dart';

@freezed
abstract class CompanyQuery with _$CompanyQuery {
  const factory CompanyQuery({
    @Default("0") String? start,
    @Default("5") String? length,
    @Default("") String? search,
  }) = _CompanyQuery;

  factory CompanyQuery.fromJson(Map<String, dynamic> json) =>
      _$CompanyQueryFromJson(json);
}
