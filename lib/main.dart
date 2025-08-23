import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/router.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Forui Base',
      builder: (context, child) =>
          FTheme(data: FThemes.zinc.light, child: child!),
      routerConfig: router,
      // home: const LoginScreen(),
    );
  }
}
