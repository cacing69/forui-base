import 'package:forui_base/shared/data/models/app/social_link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_app.g.dart';
part 'user_app.freezed.dart';

@freezed
abstract class UserApp with _$UserApp {
  const factory UserApp({
    @Default(null) String? firstName,
    @Default(null) String? lastName,
    @Default(null) String? avatar,
    @Default(null) String? bio,
    @Default(null) List<SocialLink>? socialLinks,
  }) = _UserApp;

  factory UserApp.fromJson(Map<String, dynamic> json) =>
      _$UserAppFromJson(json);
}
