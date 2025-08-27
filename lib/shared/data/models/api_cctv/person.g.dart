// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Person _$PersonFromJson(Map<String, dynamic> json) => _Person(
  fatherName: json['fatherName'] as String? ?? null,
  rt: (json['rt'] as num?)?.toInt() ?? null,
  rw: (json['rw'] as num?)?.toInt() ?? null,
  weddingDate: json['weddingDate'] as String? ?? null,
  updatedDate: json['updatedDate'] as String? ?? null,
  villageName: json['villageName'] as String? ?? null,
  cityName: json['cityName'] as String? ?? null,
  educationName: json['educationName'] as String? ?? null,
  id: json['id'] == null ? null : const BigIntConverter().fromJson(json['id']),
  religionName: json['religionName'] as String? ?? null,
  bloodTypeName: json['bloodTypeName'] as String? ?? null,
  placeOfBirth: json['placeOfBirth'] as String? ?? null,
  address: json['address'] as String? ?? null,
  districtName: json['districtName'] as String? ?? null,
  sexId: (json['sexId'] as num?)?.toInt() ?? null,
  work: json['work'] as String? ?? null,
  maritalName: json['maritalName'] as String? ?? null,
  motherName: json['motherName'] as String? ?? null,
  photo: json['photo'] as String? ?? null,
  dateOfBirth: json['dateOfBirth'] as String? ?? null,
  divorceDate: json['divorceDate'] as String? ?? null,
  divorceCertificateNumber: json['divorceCertificateNumber'] as String? ?? null,
  birthCertificate: json['birthCertificate'] as String? ?? null,
  familyCardId: json['familyCardId'] == null
      ? null
      : const BigIntConverter().fromJson(json['familyCardId']),
  name: json['name'] as String? ?? null,
  marriageCertificateNumber:
      json['marriageCertificateNumber'] as String? ?? null,
  postCode: json['postCode'] as String? ?? null,
  provinceName: json['provinceName'] as String? ?? null,
);

Map<String, dynamic> _$PersonToJson(_Person instance) => <String, dynamic>{
  'fatherName': instance.fatherName,
  'rt': instance.rt,
  'rw': instance.rw,
  'weddingDate': instance.weddingDate,
  'updatedDate': instance.updatedDate,
  'villageName': instance.villageName,
  'cityName': instance.cityName,
  'educationName': instance.educationName,
  'id': const BigIntConverter().toJson(instance.id),
  'religionName': instance.religionName,
  'bloodTypeName': instance.bloodTypeName,
  'placeOfBirth': instance.placeOfBirth,
  'address': instance.address,
  'districtName': instance.districtName,
  'sexId': instance.sexId,
  'work': instance.work,
  'maritalName': instance.maritalName,
  'motherName': instance.motherName,
  'photo': instance.photo,
  'dateOfBirth': instance.dateOfBirth,
  'divorceDate': instance.divorceDate,
  'divorceCertificateNumber': instance.divorceCertificateNumber,
  'birthCertificate': instance.birthCertificate,
  'familyCardId': const BigIntConverter().toJson(instance.familyCardId),
  'name': instance.name,
  'marriageCertificateNumber': instance.marriageCertificateNumber,
  'postCode': instance.postCode,
  'provinceName': instance.provinceName,
};
