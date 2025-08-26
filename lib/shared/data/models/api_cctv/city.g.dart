// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_City _$CityFromJson(Map<String, dynamic> json) => _City(
  name: json['name'] as String? ?? null,
  id: json['id'] == null ? null : const BigIntConverter().fromJson(json['id']),
);

Map<String, dynamic> _$CityToJson(_City instance) => <String, dynamic>{
  'name': instance.name,
  'id': const BigIntConverter().toJson(instance.id),
};
