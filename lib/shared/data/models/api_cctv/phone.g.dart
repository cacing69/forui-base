// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Phone _$PhoneFromJson(Map<String, dynamic> json) => _Phone(
  id: json['id'] == null ? null : const BigIntConverter().fromJson(json['id']),
  registeredDate: json['registeredDate'] as String? ?? null,
  providerName: json['providerName'] as String? ?? null,
);

Map<String, dynamic> _$PhoneToJson(_Phone instance) => <String, dynamic>{
  'id': const BigIntConverter().toJson(instance.id),
  'registeredDate': instance.registeredDate,
  'providerName': instance.providerName,
};
