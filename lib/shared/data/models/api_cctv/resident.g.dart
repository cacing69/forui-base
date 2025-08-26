// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resident.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Resident _$ResidentFromJson(Map<String, dynamic> json) => _Resident(
  placeOfBirth: json['placeOfBirth'] as String? ?? null,
  address: json['address'] as String? ?? null,
  sexId: (json['sexId'] as num?)?.toInt() ?? null,
  familyCardId: json['familyCardId'] == null
      ? null
      : const BigIntConverter().fromJson(json['familyCardId']),
  name: json['name'] as String? ?? null,
  dateOfBirth: json['dateOfBirth'] as String? ?? null,
  id: json['id'] == null ? null : const BigIntConverter().fromJson(json['id']),
);

Map<String, dynamic> _$ResidentToJson(_Resident instance) => <String, dynamic>{
  'placeOfBirth': instance.placeOfBirth,
  'address': instance.address,
  'sexId': instance.sexId,
  'familyCardId': const BigIntConverter().toJson(instance.familyCardId),
  'name': instance.name,
  'dateOfBirth': instance.dateOfBirth,
  'id': const BigIntConverter().toJson(instance.id),
};
