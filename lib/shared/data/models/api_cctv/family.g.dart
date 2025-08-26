// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Family _$FamilyFromJson(Map<String, dynamic> json) => _Family(
  positionName: json['positionName'] as String? ?? null,
  bloodTypeName: json['bloodTypeName'] as String? ?? null,
  placeOfBirth: json['placeOfBirth'] as String? ?? null,
  positionId: (json['positionId'] as num?)?.toInt() ?? null,
  sexId: (json['sexId'] as num?)?.toInt() ?? null,
  work: json['work'] as String? ?? null,
  maritalName: json['maritalName'] as String? ?? null,
  educationName: json['educationName'] as String? ?? null,
  name: json['name'] as String? ?? null,
  dateOfBirth: json['dateOfBirth'] as String? ?? null,
  religionName: json['religionName'] as String? ?? null,
  id: json['id'] == null ? null : const BigIntConverter().fromJson(json['id']),
);

Map<String, dynamic> _$FamilyToJson(_Family instance) => <String, dynamic>{
  'positionName': instance.positionName,
  'bloodTypeName': instance.bloodTypeName,
  'placeOfBirth': instance.placeOfBirth,
  'positionId': instance.positionId,
  'sexId': instance.sexId,
  'work': instance.work,
  'maritalName': instance.maritalName,
  'educationName': instance.educationName,
  'name': instance.name,
  'dateOfBirth': instance.dateOfBirth,
  'religionName': instance.religionName,
  'id': const BigIntConverter().toJson(instance.id),
};
