// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resident_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResidentQuery _$ResidentQueryFromJson(Map<String, dynamic> json) =>
    _ResidentQuery(
      start: json['start'] as String? ?? "0",
      length: json['length'] as String? ?? "5",
      search: json['search'] as String? ?? "",
      provinceId: json['provinceId'] as String? ?? "0",
      cityId: json['cityId'] as String? ?? "0",
      districtId: json['districtId'] as String? ?? "0",
      villageId: json['villageId'] as String? ?? "0",
      minAge: json['minAge'] as String? ?? "0",
      maxAge: json['maxAge'] as String? ?? "120",
      birthDate: json['birthDate'] as String? ?? "",
    );

Map<String, dynamic> _$ResidentQueryToJson(_ResidentQuery instance) =>
    <String, dynamic>{
      'start': instance.start,
      'length': instance.length,
      'search': instance.search,
      'provinceId': instance.provinceId,
      'cityId': instance.cityId,
      'districtId': instance.districtId,
      'villageId': instance.villageId,
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
      'birthDate': instance.birthDate,
    };
