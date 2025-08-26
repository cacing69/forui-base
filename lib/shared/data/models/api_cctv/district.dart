import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'district.g.dart';
part 'district.freezed.dart';

@freezed
abstract class District with _$District {
  const factory District({
    @Default(null) String? name,
    @BigIntConverter() @Default(null) BigInt? id,
  }) = _District;

  factory District.fromJson(Map<String, dynamic> json) =>
      _$DistrictFromJson(json);
}
