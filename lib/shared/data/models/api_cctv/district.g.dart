// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_District _$DistrictFromJson(Map<String, dynamic> json) => _District(
  name: json['name'] as String? ?? null,
  id: json['id'] == null ? null : const BigIntConverter().fromJson(json['id']),
);

Map<String, dynamic> _$DistrictToJson(_District instance) => <String, dynamic>{
  'name': instance.name,
  'id': const BigIntConverter().toJson(instance.id),
};
