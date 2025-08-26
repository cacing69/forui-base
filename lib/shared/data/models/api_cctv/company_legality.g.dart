// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_legality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyLegality _$CompanyLegalityFromJson(Map<String, dynamic> json) =>
    _CompanyLegality(
      date: json['date'] as String? ?? null,
      address: json['address'] as String? ?? null,
      phone: json['phone'] as String? ?? null,
      name: json['name'] as String? ?? null,
      type: json['type'] as String? ?? null,
    );

Map<String, dynamic> _$CompanyLegalityToJson(_CompanyLegality instance) =>
    <String, dynamic>{
      'date': instance.date,
      'address': instance.address,
      'phone': instance.phone,
      'name': instance.name,
      'type': instance.type,
    };
