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
    @Default(null) String? email,
    @Default(null) String? phone,
    @Default(null) String? github,
    @Default(null) String? linkedIn,
    @Default(null) String? facebook,
  }) = _UserApp;

  factory UserApp.fromJson(Map<String, dynamic> json) =>
      _$UserAppFromJson(json);
}
