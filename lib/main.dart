import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/l10n/app_localizations.dart';
import 'package:forui_base/router.dart';
import 'package:forui_base/shared/presentation/providers/config_app_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:stack_trace/stack_trace.dart';

void main() async {
  await Chain.capture(() async {
    await runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

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
      final notifier = ref.read(configAppNotifierProvider.notifier);

      final prefs = await SharedPreferences.getInstance();

      if (prefs.containsKey('isDarkTheme')) {
        final isDarkTheme = prefs.getBool('isDarkTheme') ?? false;
        if (isDarkTheme) {
          ref
              .read(configAppNotifierProvider.notifier)
              .changeTheme(FThemes.zinc.dark);
        } else {
          ref
              .read(configAppNotifierProvider.notifier)
              .changeTheme(FThemes.zinc.light);
        }
      } else {
        if (brightness == Brightness.dark) {
          notifier.changeTheme(FThemes.zinc.dark);

          await prefs.setBool('isDarkTheme', true);
        } else {
          notifier.changeTheme(FThemes.zinc.light);

          await prefs.setBool('isDarkTheme', false);
        }
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
      locale: Locale('en'),
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
