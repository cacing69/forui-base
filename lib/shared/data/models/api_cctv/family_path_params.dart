import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'family_path_params.g.dart';
part 'family_path_params.freezed.dart';

@freezed
abstract class FamilyPathParams with _$FamilyPathParams {
  const factory FamilyPathParams({
    @Path("personId") @Default("") String? personId,
    @Path("familyCardId") @Default("") String? familyCardId,
  }) = _FamilyPathParams;

  factory FamilyPathParams.fromJson(Map<String, dynamic> json) =>
      _$FamilyPathParamsFromJson(json);
}
