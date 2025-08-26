import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_checklist.g.dart';
part 'company_checklist.freezed.dart';

@freezed
abstract class CompanyChecklist with _$CompanyChecklist {
  const factory CompanyChecklist({
    @Default(null) String? permissionType,
    @Default(null) String? agency,
    @Default(null) String? id,
    @Default(null) String? permissionCode,
    @Default(null) String? permissionDate,
    @Default(null) String? permissionName,
  }) = _CompanyChecklist;

  factory CompanyChecklist.fromJson(Map<String, dynamic> json) =>
      _$CompanyChecklistFromJson(json);
}
