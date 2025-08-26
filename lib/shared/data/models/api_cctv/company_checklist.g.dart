// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_checklist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyChecklist _$CompanyChecklistFromJson(Map<String, dynamic> json) =>
    _CompanyChecklist(
      permissionType: json['permissionType'] as String? ?? null,
      agency: json['agency'] as String? ?? null,
      id: json['id'] as String? ?? null,
      permissionCode: json['permissionCode'] as String? ?? null,
      permissionDate: json['permissionDate'] as String? ?? null,
      permissionName: json['permissionName'] as String? ?? null,
    );

Map<String, dynamic> _$CompanyChecklistToJson(_CompanyChecklist instance) =>
    <String, dynamic>{
      'permissionType': instance.permissionType,
      'agency': instance.agency,
      'id': instance.id,
      'permissionCode': instance.permissionCode,
      'permissionDate': instance.permissionDate,
      'permissionName': instance.permissionName,
    };
