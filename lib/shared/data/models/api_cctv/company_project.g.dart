// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyProject _$CompanyProjectFromJson(Map<String, dynamic> json) =>
    _CompanyProject(
      name: json['name'] as String? ?? null,
      invenstment: json['invenstment'] as String? ?? null,
      id: json['id'] as String? ?? null,
      type: json['type'] as String? ?? null,
    );

Map<String, dynamic> _$CompanyProjectToJson(_CompanyProject instance) =>
    <String, dynamic>{
      'name': instance.name,
      'invenstment': instance.invenstment,
      'id': instance.id,
      'type': instance.type,
    };
