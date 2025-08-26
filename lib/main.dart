import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/config/env.dart';
import 'package:forui_base/router.dart';
import 'package:forui_base/shared/presentation/providers/config_app_notifier.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:stack_trace/stack_trace.dart';

void main() {
  Chain.capture(() {
    runZonedGuarded(
      () {
        runApp(const ProviderScope(child: Application()));
      },
      (error, stack) {
        final chain = Chain.forTrace(stack);
        debugPrint('Global error: $error');
        debugPrint('Trace lengkap:\n$chain');
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

    debugPrint('API URL: ${Env.apiAppCctvDomain}');

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final brightness = MediaQuery.of(context).platformBrightness;
      final notifier = ref.read(configAppNotifierProvider.notifier);

      SystemChannels.textInput.invokeMethod('TextInput.hide');

      notifier.changeTheme(
        brightness == Brightness.dark ? FThemes.zinc.dark : FThemes.zinc.light,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final configApp = ref.watch(configAppNotifierProvider);

    return MaterialApp.router(
      title: 'Forui Base',
      builder: (context, child) =>
          FTheme(data: configApp.themeData!, child: child!),
      theme: configApp.themeData!.toApproximateMaterialTheme().copyWith(
        extensions: [SkeletonizerConfigData(effect: PulseEffect())],
      ),
      routerConfig: router,
    );
  }
}
