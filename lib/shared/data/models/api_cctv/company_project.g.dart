// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyProject _$CompanyProjectFromJson(Map<String, dynamic> json) =>
    _CompanyProject(
      name: json['name'] as String? ?? null,
      investment: json['investment'] == null
          ? null
          : const BigIntConverter().fromJson(json['investment']),
      id: json['id'] as String? ?? null,
      type: json['type'] as String? ?? null,
    );

Map<String, dynamic> _$CompanyProjectToJson(_CompanyProject instance) =>
    <String, dynamic>{
      'name': instance.name,
      'investment': const BigIntConverter().toJson(instance.investment),
      'id': instance.id,
      'type': instance.type,
    };
