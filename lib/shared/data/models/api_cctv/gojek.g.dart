// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gojek.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Gojek _$GojekFromJson(Map<String, dynamic> json) => _Gojek(
  driverFlag: json['driverFlag'] as String? ?? null,
  createdDate: json['createdDate'] as String? ?? null,
  name: json['name'] as String? ?? null,
  email: json['email'] as String? ?? null,
  phone: json['phone'] == null
      ? null
      : GojekPhone.fromJson(json['phone'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GojekToJson(_Gojek instance) => <String, dynamic>{
  'driverFlag': instance.driverFlag,
  'createdDate': instance.createdDate,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
};
