import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_pic.g.dart';
part 'company_pic.freezed.dart';

@freezed
abstract class CompanyPic with _$CompanyPic {
  const factory CompanyPic({
    @Default(null) String? country,
    @Default(null) String? address,
    @Default(null) String? phone,
    @Default(null) String? name,
    @Default(null) String? foreignFlag,
    @Default(null) String? taxNumber,
    @Default(null) String? id,
    @Default(null) String? position,
    @Default(null) String? email,
  }) = _CompanyPic;

  factory CompanyPic.fromJson(Map<String, dynamic> json) =>
      _$CompanyPicFromJson(json);
}
