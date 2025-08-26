import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family.g.dart';
part 'family.freezed.dart';

@freezed
abstract class Family with _$Family {
  const factory Family({
    @Default(null) String? positionName,
    @Default(null) String? bloodTypeName,
    @Default(null) String? placeOfBirth,
    @Default(null) int? positionId,
    @Default(null) int? sexId,
    @Default(null) String? work,
    @Default(null) String? maritalName,
    @Default(null) String? educationName,
    @Default(null) String? name,
    @Default(null) String? dateOfBirth,
    @Default(null) String? religionName,
    @BigIntConverter() @Default(null) BigInt? id,
  }) = _Family;

  factory Family.fromJson(Map<String, dynamic> json) => _$FamilyFromJson(json);
}
