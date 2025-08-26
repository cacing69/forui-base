import 'package:freezed_annotation/freezed_annotation.dart';

part 'resident_query.g.dart';
part 'resident_query.freezed.dart';

@freezed
abstract class ResidentQuery with _$ResidentQuery {
  const factory ResidentQuery({
    @Default("0") String? start,
    @Default("5") String? length,
    @Default("") String? search,
    @Default("0") String? provinceId,
    @Default("0") String? cityId,
    @Default("0") String? districtId,
    @Default("0") String? villageId,
    @Default("0") String? minAge,
    @Default("120") String? maxAge,
    @Default("") String? birthDate, // yyyy-mm-dd
  }) = _ResidentQuery;

  factory ResidentQuery.fromJson(Map<String, dynamic> json) =>
      _$ResidentQueryFromJson(json);
}
