import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/map_theme_data.dart';
import 'package:forui_base/core/constant/shared_pref_key.dart';
import 'package:forui_base/l10n/app_localizations.dart';
import 'package:forui_base/router.dart';
import 'package:forui_base/shared/data/models/hive/cached_response.dart';
import 'package:forui_base/shared/presentation/providers/config_app_notifier.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:stack_trace/stack_trace.dart';

void main() async {
  await Chain.capture(() async {
    await runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

        await Hive.initFlutter();

        Hive.registerAdapter(CachedResponseAdapter());

        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        runApp(const ProviderScope(child: Application()));
      },
      (error, stack) {
        final chain = Chain.forTrace(stack);
        debugPrint('Error: $error');
        debugPrint('Trace :\n$chain');
      },
    );
  });
}

class Application extends ConsumerStatefulWidget {
  const Application({super.key});

  @override
  ConsumerState<Application> createState() => _ApplicationState();
}

class _ApplicationState extends ConsumerState<Application> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final brightness = MediaQuery.of(context).platformBrightness;
      final configAppNotifier = ref.read(configAppNotifierProvider.notifier);

      final prefs = await SharedPreferences.getInstance();

      // Theme
      if (prefs.containsKey(SharedPrefKey.theme)) {
        final theme = prefs.getString(SharedPrefKey.theme);
        if (theme != null) {
          configAppNotifier.changeTheme(theme);
        } else {
          configAppNotifier.changeTheme("zinc");
        }
      } else {
        configAppNotifier.changeTheme("zinc");
      }

      if (prefs.containsKey(SharedPrefKey.isDarkMode)) {
        final isDarkMode = prefs.getBool(SharedPrefKey.isDarkMode) ?? false;
        if (isDarkMode) {
          ref
              .read(configAppNotifierProvider.notifier)
              .changeThemeData(
                mapThemeDataDark[ref.read(configAppNotifierProvider).theme]!,
              );

          ref.read(configAppNotifierProvider.notifier).changeIsDarkMode(true);
        } else {
          ref
              .read(configAppNotifierProvider.notifier)
              .changeThemeData(
                mapThemeDataLight[ref.read(configAppNotifierProvider).theme]!,
              );

          ref.read(configAppNotifierProvider.notifier).changeIsDarkMode(false);
        }
      } else {
        if (brightness == Brightness.dark) {
          configAppNotifier.changeThemeData(FThemes.zinc.dark);
          ref.read(configAppNotifierProvider.notifier).changeIsDarkMode(true);

          await prefs.setBool(SharedPrefKey.isDarkMode, true);
        } else {
          configAppNotifier.changeThemeData(FThemes.zinc.light);
          ref.read(configAppNotifierProvider.notifier).changeIsDarkMode(false);

          await prefs.setBool(SharedPrefKey.isDarkMode, false);
        }
      }

      // Locale handler
      if (prefs.containsKey('locale')) {
        final locale = prefs.getString('locale');
        if (locale != null) {
          configAppNotifier.changeLocale(Locale(locale));
        } else {
          configAppNotifier.changeLocale(Locale("en"));
        }
      } else {
        configAppNotifier.changeLocale(Locale("en"));
      }

      SystemChannels.textInput.invokeMethod('TextInput.hide');
    });
  }

  @override
  Widget build(BuildContext context) {
    final configApp = ref.watch(configAppNotifierProvider);

    return MaterialApp.router(
      title: 'Forui Base',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FLocalizations.delegate,
      ],
      locale: configApp.locale,
      supportedLocales: [
        Locale('id'), // Indonesia
        Locale('en'), // English
        Locale('es'), // Español
      ],
      builder: (context, child) =>
          FTheme(data: configApp.themeData!, child: child!),
      theme: configApp.themeData!.toApproximateMaterialTheme().copyWith(
        extensions: [SkeletonizerConfigData(effect: PulseEffect())],
      ),
      routerConfig: router,
    );
  }
}
