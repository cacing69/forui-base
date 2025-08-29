import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/shared/data/models/app/config_app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'config_app_notifier.g.dart';

@Riverpod(keepAlive: true)
class ConfigAppNotifier extends _$ConfigAppNotifier {
  @override
  ConfigApp build() {
    return ConfigApp(themeData: FThemes.zinc.light);
  }

  void changeThemeData(FThemeData newThemeData) {
    // TODO : need to persist theme data after closed

    state = state.copyWith(themeData: newThemeData);
  }

  void changeIsDarkMode(bool darkMode) {
    // TODO : need to persist theme data after closed

    state = state.copyWith(isDarkMode: darkMode);
  }

  void changeTheme(String newTheme) {
    // TODO : need to persist theme data after closed

    state = state.copyWith(theme: newTheme);
  }

  void changeLocale(Locale locale) {
    // TODO : need to persist theme data after closed

    state = state.copyWith(locale: locale);
  }
}
