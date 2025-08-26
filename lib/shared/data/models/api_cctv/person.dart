import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.g.dart';
part 'person.freezed.dart';

@freezed
abstract class Person with _$Person {
  const factory Person({
    @Default(null) String? fatherName,
    @Default(null) String? rt,
    @Default(null) String? rw,
    @Default(null) String? weddingDate,
    @Default(null) String? updatedDate,
    @Default(null) String? villageName,
    @Default(null) String? cityName,
    @Default(null) String? educationName,
    @BigIntConverter() @Default(null) BigInt? id,
    @Default(null) String? religionName,
    @Default(null) String? bloodTypeName,
    @Default(null) String? placeOfBirth,
    @Default(null) String? address,
    @Default(null) String? districtName,
    @Default(null) String? sexId,
    @Default(null) String? work,
    @Default(null) String? maritalName,
    @Default(null) String? motherName,
    @Default(null) String? photo,
    @Default(null) String? dateOfBirth,
    @Default(null) String? divorceDate,
    @Default(null) String? divorceCertificateNumber,
    @Default(null) String? birthCertificate,
    @BigIntConverter() @Default(null) BigInt? familyCardId,
    @Default(null) String? name,
    @Default(null) String? marriageCertificateNumber,
    @Default(null) String? postCode,
    @Default(null) String? provinceName,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
