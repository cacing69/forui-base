import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.g.dart';
part 'city.freezed.dart';

@freezed
abstract class City with _$City {
  const factory City({
    @Default(null) String? name,
    @BigIntConverter() @Default(null) BigInt? id,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
