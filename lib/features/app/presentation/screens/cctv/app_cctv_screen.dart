import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

class AppCctvScreen extends StatefulWidget {
  const AppCctvScreen({super.key});

  @override
  State<AppCctvScreen> createState() => _AppCctvScreenState();
}

class _AppCctvScreenState extends State<AppCctvScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader.nested(
        title: const Text('App : CCTV'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              context.pop();
            },
          ),
        ],
      ),
      child: Placeholder(),
    );
  }
}
