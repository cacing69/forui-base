import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pln.g.dart';
part 'pln.freezed.dart';

@freezed
abstract class Pln with _$Pln {
  const factory Pln({
    @Default(null) String? chargeTypeName,
    @Default(null) String? address,
    @Default(null) double? latitude,
    @BigIntConverter() @Default(null) BigInt? kwhNumber,
    @Default(null) String? energyTypeName,
    @Default(null) int? yearManufacture,
    @Default(null) String? phone,
    @BigIntConverter() @Default(null) BigInt? meterId,
    @BigIntConverter() @Default(null) BigInt? residentId,
    @BigIntConverter() @Default(null) BigInt? id,
    @Default(null) int? energyValue,
    @Default(null) String? email,
    @Default(null) String? plantPowerName,
    @Default(null) double? longitude,
  }) = _Pln;

  factory Pln.fromJson(Map<String, dynamic> json) => _$PlnFromJson(json);
}
