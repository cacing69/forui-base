import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:forui_base/shared/data/models/api_cctv/company_checklist.dart';
import 'package:forui_base/shared/data/models/api_cctv/company_legality.dart';
import 'package:forui_base/shared/data/models/api_cctv/company_pic.dart';
import 'package:forui_base/shared/data/models/api_cctv/company_project.dart';
import 'package:forui_base/shared/data/models/api_cctv/company_shareholder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.g.dart';
part 'company.freezed.dart';

@freezed
abstract class Company with _$Company {
  const factory Company({
    @Default(null) List<CompanyChecklist>? checklists,
    @Default(null) String? employmentReportingNumber,
    @Default(null) List<CompanyProject>? projects,
    @Default(null) String? validationDate,
    @Default(null) List<CompanyPic>? pic,
    @Default(null) String? importFlag,
    @Default(null) @BigIntConverter() BigInt? totalCapitalAmount,
    @Default(null) int? domesticCapitalPercentage,
    @Default(null) String? id,
    @Default(null) String? issueDate,
    @Default(null) String? email,
    @Default(null) String? address,
    @Default(null) String? legalBodyStatus,
    @Default(null) List<CompanyShareholder>? shareholders,
    @Default(null) String? bussinessActorType,
    @Default(null) @BigIntConverter() BigInt? baseCapitalTotal,
    @Default(null) String? taxNumber,
    @Default(null) List<CompanyLegality>? legalities,
    @Default(null) String? submissionDate,
    @Default(null) String? approvalNumber,
    @Default(null) @BigIntConverter() BigInt? domesticCapitalAmount,
    @Default(null) String? exportFlag,
    @Default(null) String? phoneNumber,
    @Default(null) int? foreignCapitalPercentage,
    @Default(null) @BigIntConverter() BigInt? registrationNumber,
    @Default(null) String? businessScale,
    @Default(null) @BigIntConverter() BigInt? foreignCapitalAmount,
    @Default(null) String? name,
    @Default(null) @BigIntConverter() BigInt? issueCapitalTotal,
    @Default(null) String? companyTypeId,
    @Default(null) String? onlineSingleSubmissionNumber,
    @Default(null) String? villageId,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
