import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_person_notifier.dart';
import 'package:forui_base/shared/data/models/api_cctv/person.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppCctvPersonScreen extends ConsumerStatefulWidget {
  const AppCctvPersonScreen({super.key});

  @override
  ConsumerState<AppCctvPersonScreen> createState() =>
      _AppCctvPersonScreenState();
}

class _AppCctvPersonScreenState extends ConsumerState<AppCctvPersonScreen> {
  @override
  Widget build(BuildContext context) {
    final asyncPersonState = ref.watch(appCctvPersonNotifierProvider);

    return FScaffold(
      header: FHeader.nested(
        title: const Text('CCTV (Person)'),
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
      child: asyncPersonState.when(
        data: (TResponse<Person>? res) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Center(child: Text("Test")),
                Placeholder(),
              ],
            ),
          );
        },
        error: (Object error, StackTrace stackTrace) {
          debugPrint(error.toString());
          debugPrintStack(stackTrace: stackTrace);
          return Placeholder();
        },
        loading: () => Placeholder(),
      ),
    );
  }
}
