import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui/widgets/scaffold.dart';
import 'package:go_router/go_router.dart';

class AppCctvDetailScreen extends StatefulWidget {
  const AppCctvDetailScreen({super.key});

  @override
  State<AppCctvDetailScreen> createState() => _AppCctvDetailScreenState();
}

class _AppCctvDetailScreenState extends State<AppCctvDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader.nested(
        title: const Text('Person Name'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              context.pop();
            },
          ),
        ],
        suffixes: [
          FHeaderAction(
            icon: Icon(FIcons.badgeInfo),
            onPress: () {
              // showFSheet(
              //   context: context,
              //   mainAxisMaxRatio: null,
              //   constraints: BoxConstraints(
              //     maxWidth: MediaQuery.of(context).size.width * 0.8,
              //     maxHeight: double.infinity,
              //   ),
              //   side: FLayout.rtl,
              //   builder: (context) =>
              // );
            },
          ),
        ],
      ),
      child: Placeholder(),
    );
  }
}
