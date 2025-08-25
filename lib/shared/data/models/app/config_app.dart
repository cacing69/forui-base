import 'package:forui/forui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_app.freezed.dart';

@freezed
abstract class ConfigApp with _$ConfigApp {
  const factory ConfigApp({@Default(null) FThemeData? themeData}) = _ConfigApp;
}
