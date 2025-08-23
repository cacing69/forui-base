import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader(
        title: Text("Forui Base"),
        suffixes: [FHeaderAction(icon: Icon(FIcons.menu), onPress: () {})],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("App Libraries"),
              Gap(5),
              FItem(
                prefix: Icon(FIcons.codesandbox, color: Colors.blue.shade900),
                title: const Text('forui'),
                suffix: Icon(FIcons.chevronRight),
              ),
              FItem(
                prefix: Icon(FIcons.codesandbox, color: Colors.blue.shade900),
                title: const Text('flutter_hooks'),
                suffix: Icon(FIcons.chevronRight),
              ),
              FItem(
                prefix: Icon(FIcons.codesandbox, color: Colors.blue.shade900),
                title: const Text('gap'),
                suffix: Icon(FIcons.chevronRight),
              ),
              FItem(
                prefix: Icon(FIcons.codesandbox, color: Colors.blue.shade900),
                title: const Text('cached_network_image'),
                suffix: Icon(FIcons.chevronRight),
              ),
              FItem(
                prefix: Icon(FIcons.codesandbox, color: Colors.blue.shade900),
                title: const Text('freezed_annotation'),
                suffix: Icon(FIcons.chevronRight),
              ),
              FItem(
                prefix: Icon(FIcons.codesandbox, color: Colors.blue.shade900),
                title: const Text('json_annotation'),
                suffix: Icon(FIcons.chevronRight),
              ),
              FItem(
                prefix: Icon(FIcons.codesandbox, color: Colors.blue.shade900),
                title: const Text('flutter_riverpod'),
                suffix: Icon(FIcons.chevronRight),
              ),
            ],
          ),
          FDivider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Development Libraries"),
              Gap(5),
              FItem(
                prefix: Icon(FIcons.bugPlay, color: Colors.orange.shade900),
                title: const Text('flutter_lints'),
                suffix: Icon(FIcons.chevronRight),
              ),
              FItem(
                prefix: Icon(FIcons.bugPlay, color: Colors.orange.shade900),
                title: const Text('build_runner'),
                suffix: Icon(FIcons.chevronRight),
              ),
              FItem(
                prefix: Icon(FIcons.bugPlay, color: Colors.orange.shade900),
                title: const Text('freezed'),
                suffix: Icon(FIcons.chevronRight),
              ),
              FItem(
                prefix: Icon(FIcons.bugPlay, color: Colors.orange.shade900),
                title: const Text('json_serializable'),
                suffix: Icon(FIcons.chevronRight),
              ),
              FItem(
                prefix: Icon(FIcons.bugPlay, color: Colors.orange.shade900),
                title: const Text('riverpod_lint'),
                suffix: Icon(FIcons.chevronRight),
              ),
              FItem(
                prefix: Icon(FIcons.bugPlay, color: Colors.orange.shade900),
                title: const Text('custom_lint'),
                suffix: Icon(FIcons.chevronRight),
              ),FItem(
                prefix: Icon(FIcons.bugPlay, color: Colors.orange.shade900),
                title: const Text('riverpod_generator'),
                suffix: Icon(FIcons.chevronRight),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
