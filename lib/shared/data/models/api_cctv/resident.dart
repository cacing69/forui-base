import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resident.g.dart';
part 'resident.freezed.dart';

@freezed
abstract class Resident with _$Resident {
  const factory Resident({
    @Default(null) String? placeOfBirth,
    @Default(null) String? address,
    @Default(null) int? sexId,
    @BigIntConverter() @Default(null) BigInt? familyCardId,
    @Default(null) String? name,
    @Default(null) String? dateOfBirth,
    @BigIntConverter() @Default(null) BigInt? id,
  }) = _Resident;

  factory Resident.fromJson(Map<String, dynamic> json) =>
      _$ResidentFromJson(json);
}
