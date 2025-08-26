// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_pic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyPic _$CompanyPicFromJson(Map<String, dynamic> json) => _CompanyPic(
  country: json['country'] as String? ?? null,
  address: json['address'] as String? ?? null,
  phone: json['phone'] as String? ?? null,
  name: json['name'] as String? ?? null,
  foreignFlag: json['foreignFlag'] as String? ?? null,
  taxNumber: json['taxNumber'] as String? ?? null,
  id: json['id'] as String? ?? null,
  position: json['position'] as String? ?? null,
  email: json['email'] as String? ?? null,
);

Map<String, dynamic> _$CompanyPicToJson(_CompanyPic instance) =>
    <String, dynamic>{
      'country': instance.country,
      'address': instance.address,
      'phone': instance.phone,
      'name': instance.name,
      'foreignFlag': instance.foreignFlag,
      'taxNumber': instance.taxNumber,
      'id': instance.id,
      'position': instance.position,
      'email': instance.email,
    };
