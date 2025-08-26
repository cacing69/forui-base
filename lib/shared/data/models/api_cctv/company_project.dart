import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_project.g.dart';
part 'company_project.freezed.dart';

@freezed
abstract class CompanyProject with _$CompanyProject {
  const factory CompanyProject({
    @Default(null) String? name,
    @Default(null) String? invenstment,
    @Default(null) String? id,
    @Default(null) String? type,
  }) = _CompanyProject;

  factory CompanyProject.fromJson(Map<String, dynamic> json) =>
      _$CompanyProjectFromJson(json);
}
