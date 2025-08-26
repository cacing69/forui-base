// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_shareholder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyShareholder _$CompanyShareholderFromJson(Map<String, dynamic> json) =>
    _CompanyShareholder(
      country: json['country'] as String? ?? null,
      capital: json['capital'] == null
          ? null
          : const BigIntConverter().fromJson(json['capital']),
      address: json['address'] as String? ?? null,
      name: json['name'] as String? ?? null,
      foreignFlag: json['foreignFlag'] as String? ?? null,
      taxNumber: json['taxNumber'] as String? ?? null,
      id: json['id'] as String? ?? null,
      position: json['position'] as String? ?? null,
      email: json['email'] as String? ?? null,
    );

Map<String, dynamic> _$CompanyShareholderToJson(_CompanyShareholder instance) =>
    <String, dynamic>{
      'country': instance.country,
      'capital': const BigIntConverter().toJson(instance.capital),
      'address': instance.address,
      'name': instance.name,
      'foreignFlag': instance.foreignFlag,
      'taxNumber': instance.taxNumber,
      'id': instance.id,
      'position': instance.position,
      'email': instance.email,
    };
