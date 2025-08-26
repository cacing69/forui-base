import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'province.g.dart';
part 'province.freezed.dart';

@freezed
abstract class Province with _$Province {
  const factory Province({
    @Default(null) String? name,
    @BigIntConverter() @Default(null) BigInt? id,
  }) = _Province;

  factory Province.fromJson(Map<String, dynamic> json) =>
      _$ProvinceFromJson(json);
}
