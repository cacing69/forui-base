import 'dart:ui';

import 'package:forui/forui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_app.freezed.dart';

@freezed
abstract class ConfigApp with _$ConfigApp {
  const factory ConfigApp({
    @Default(null) FThemeData? themeData,
    @Default(null) bool? isDarkMode,
    @Default(null) Locale? locale,
    @Default(null) String? theme,
  }) = _ConfigApp;
}
