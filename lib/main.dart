import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/router.dart';
import 'package:forui_base/shared/presentation/providers/config_app_notifier.dart';

void main() {
  runApp(const ProviderScope(child: Application()));
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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final brightness = MediaQuery.of(context).platformBrightness;
      final notifier = ref.read(configAppNotifierProvider.notifier);

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
      routerConfig: router,
    );
  }
}
