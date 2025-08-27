import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

class AppCctvPersonOverviewTabEKtpScreen extends StatefulWidget {
  const AppCctvPersonOverviewTabEKtpScreen({super.key});

  @override
  State<AppCctvPersonOverviewTabEKtpScreen> createState() =>
      _AppCctvPersonOverviewTabEKtpScreenState();
}

class _AppCctvPersonOverviewTabEKtpScreenState
    extends State<AppCctvPersonOverviewTabEKtpScreen> {
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
