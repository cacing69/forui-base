// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pln.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pln _$PlnFromJson(Map<String, dynamic> json) => _Pln(
  chargeTypeName: json['chargeTypeName'] as String? ?? null,
  address: json['address'] as String? ?? null,
  latitude: (json['latitude'] as num?)?.toDouble() ?? null,
  kwhNumber: json['kwhNumber'] == null
      ? null
      : const BigIntConverter().fromJson(json['kwhNumber']),
  energyTypeName: json['energyTypeName'] as String? ?? null,
  yearManufacture: (json['yearManufacture'] as num?)?.toInt() ?? null,
  phone: json['phone'] as String? ?? null,
  meterId: json['meterId'] == null
      ? null
      : const BigIntConverter().fromJson(json['meterId']),
  residentId: json['residentId'] == null
      ? null
      : const BigIntConverter().fromJson(json['residentId']),
  id: json['id'] == null ? null : const BigIntConverter().fromJson(json['id']),
  energyValue: (json['energyValue'] as num?)?.toInt() ?? null,
  email: json['email'] as String? ?? null,
  plantPowerName: json['plantPowerName'] as String? ?? null,
  longitude: (json['longitude'] as num?)?.toDouble() ?? null,
);

Map<String, dynamic> _$PlnToJson(_Pln instance) => <String, dynamic>{
  'chargeTypeName': instance.chargeTypeName,
  'address': instance.address,
  'latitude': instance.latitude,
  'kwhNumber': const BigIntConverter().toJson(instance.kwhNumber),
  'energyTypeName': instance.energyTypeName,
  'yearManufacture': instance.yearManufacture,
  'phone': instance.phone,
  'meterId': const BigIntConverter().toJson(instance.meterId),
  'residentId': const BigIntConverter().toJson(instance.residentId),
  'id': const BigIntConverter().toJson(instance.id),
  'energyValue': instance.energyValue,
  'email': instance.email,
  'plantPowerName': instance.plantPowerName,
  'longitude': instance.longitude,
};
