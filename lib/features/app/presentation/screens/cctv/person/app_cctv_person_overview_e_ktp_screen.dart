import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

class AppCctvPersonOverviewEKtpScreen extends StatefulWidget {
  const AppCctvPersonOverviewEKtpScreen({super.key});

  @override
  State<AppCctvPersonOverviewEKtpScreen> createState() =>
      _AppCctvPersonOverviewEKtpScreenState();
}

class _AppCctvPersonOverviewEKtpScreenState
    extends State<AppCctvPersonOverviewEKtpScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader.nested(
        title: const Text('E-KTP'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              context.pop();
            },
          ),
        ],
        suffixes: [FHeaderAction(icon: Icon(FIcons.info), onPress: () {})],
      ),
      child: Placeholder(),
    );
  }
}
