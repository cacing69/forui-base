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

  void changeTheme(FThemeData newTheme) {
    // TODO : need to persist theme data after closed

    state = state.copyWith(themeData: newTheme);
  }
}
