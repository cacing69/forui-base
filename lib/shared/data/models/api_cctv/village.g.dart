// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'village.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Village _$VillageFromJson(Map<String, dynamic> json) => _Village(
  name: json['name'] as String? ?? null,
  id: json['id'] == null ? null : const BigIntConverter().fromJson(json['id']),
);

Map<String, dynamic> _$VillageToJson(_Village instance) => <String, dynamic>{
  'name': instance.name,
  'id': const BigIntConverter().toJson(instance.id),
};
