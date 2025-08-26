// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Company _$CompanyFromJson(Map<String, dynamic> json) => _Company(
  checklists:
      (json['checklists'] as List<dynamic>?)
          ?.map((e) => CompanyChecklist.fromJson(e as Map<String, dynamic>))
          .toList() ??
      null,
  employmentReportingNumber:
      json['employmentReportingNumber'] as String? ?? null,
  projects:
      (json['projects'] as List<dynamic>?)
          ?.map((e) => CompanyProject.fromJson(e as Map<String, dynamic>))
          .toList() ??
      null,
  validationDate: json['validationDate'] as String? ?? null,
  pic:
      (json['pic'] as List<dynamic>?)
          ?.map((e) => CompanyPic.fromJson(e as Map<String, dynamic>))
          .toList() ??
      null,
  importFlag: json['importFlag'] as String? ?? null,
  totalCapitalAmount: json['totalCapitalAmount'] == null
      ? null
      : const BigIntConverter().fromJson(json['totalCapitalAmount']),
  domesticCapitalPercentage:
      (json['domesticCapitalPercentage'] as num?)?.toInt() ?? null,
  id: json['id'] as String? ?? null,
  issueDate: json['issueDate'] as String? ?? null,
  email: json['email'] as String? ?? null,
  address: json['address'] as String? ?? null,
  legalBodyStatus: json['legalBodyStatus'] as String? ?? null,
  shareholders:
      (json['shareholders'] as List<dynamic>?)
          ?.map((e) => CompanyShareholder.fromJson(e as Map<String, dynamic>))
          .toList() ??
      null,
  bussinessActorType: json['bussinessActorType'] as String? ?? null,
  baseCapitalTotal: json['baseCapitalTotal'] == null
      ? null
      : const BigIntConverter().fromJson(json['baseCapitalTotal']),
  taxNumber: json['taxNumber'] as String? ?? null,
  legalities:
      (json['legalities'] as List<dynamic>?)
          ?.map((e) => CompanyLegality.fromJson(e as Map<String, dynamic>))
          .toList() ??
      null,
  submissionDate: json['submissionDate'] as String? ?? null,
  approvalNumber: json['approvalNumber'] as String? ?? null,
  domesticCapitalAmount: json['domesticCapitalAmount'] as String? ?? null,
  exportFlag: json['exportFlag'] as String? ?? null,
  phoneNumber: json['phoneNumber'] as String? ?? null,
  foreignCapitalPercentage:
      (json['foreignCapitalPercentage'] as num?)?.toInt() ?? null,
  registrationNumber: json['registrationNumber'] == null
      ? null
      : const BigIntConverter().fromJson(json['registrationNumber']),
  businessScale: json['businessScale'] as String? ?? null,
  foreignCapitalAmount: json['foreignCapitalAmount'] as String? ?? null,
  name: json['name'] as String? ?? null,
  issueCapitalTotal: json['issueCapitalTotal'] == null
      ? null
      : const BigIntConverter().fromJson(json['issueCapitalTotal']),
  companyTypeId: json['companyTypeId'] as String? ?? null,
  onlineSingleSubmissionNumber:
      json['onlineSingleSubmissionNumber'] as String? ?? null,
  villageId: json['villageId'] as String? ?? null,
);

Map<String, dynamic> _$CompanyToJson(_Company instance) => <String, dynamic>{
  'checklists': instance.checklists,
  'employmentReportingNumber': instance.employmentReportingNumber,
  'projects': instance.projects,
  'validationDate': instance.validationDate,
  'pic': instance.pic,
  'importFlag': instance.importFlag,
  'totalCapitalAmount': const BigIntConverter().toJson(
    instance.totalCapitalAmount,
  ),
  'domesticCapitalPercentage': instance.domesticCapitalPercentage,
  'id': instance.id,
  'issueDate': instance.issueDate,
  'email': instance.email,
  'address': instance.address,
  'legalBodyStatus': instance.legalBodyStatus,
  'shareholders': instance.shareholders,
  'bussinessActorType': instance.bussinessActorType,
  'baseCapitalTotal': const BigIntConverter().toJson(instance.baseCapitalTotal),
  'taxNumber': instance.taxNumber,
  'legalities': instance.legalities,
  'submissionDate': instance.submissionDate,
  'approvalNumber': instance.approvalNumber,
  'domesticCapitalAmount': instance.domesticCapitalAmount,
  'exportFlag': instance.exportFlag,
  'phoneNumber': instance.phoneNumber,
  'foreignCapitalPercentage': instance.foreignCapitalPercentage,
  'registrationNumber': const BigIntConverter().toJson(
    instance.registrationNumber,
  ),
  'businessScale': instance.businessScale,
  'foreignCapitalAmount': instance.foreignCapitalAmount,
  'name': instance.name,
  'issueCapitalTotal': const BigIntConverter().toJson(
    instance.issueCapitalTotal,
  ),
  'companyTypeId': instance.companyTypeId,
  'onlineSingleSubmissionNumber': instance.onlineSingleSubmissionNumber,
  'villageId': instance.villageId,
};
