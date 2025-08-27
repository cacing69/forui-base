import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_path_params.g.dart';
part 'family_path_params.freezed.dart';

@freezed
abstract class FamilyPathParams with _$FamilyPathParams {
  const factory FamilyPathParams({
    @Default("") String? personId,
    @Default("") String? familyCardId,
  }) = _FamilyPathParams;

  factory FamilyPathParams.fromJson(Map<String, dynamic> json) =>
      _$FamilyPathParamsFromJson(json);
}
