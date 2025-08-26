import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_notifier.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jiffy/jiffy.dart';

class AppCctvScreen extends StatefulHookConsumerWidget {
  const AppCctvScreen({super.key});

  @override
  ConsumerState<AppCctvScreen> createState() => _AppCctvScreenState();
}

class _AppCctvScreenState extends ConsumerState<AppCctvScreen> {
  final fruits = [
    'Apple',
    'Banana',
    'Blueberry',
    'Grapes',
    'Lemon',
    'Mango',
    'Kiwi',
    'Orange',
    'Peach',
    'Pear',
    'Pineapple',
    'Plum',
    'Raspberry',
    'Strawberry',
    'Watermelon',
  ];

  @override
  Widget build(BuildContext context) {
    final asyncResidentState = ref.watch(appCctvNotifierProvider);

    final Jiffy now = Jiffy.now();

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
        suffixes: [
          FHeaderAction(
            icon: Icon(FIcons.funnel),
            onPress: () {
              showFSheet(
                context: context,
                mainAxisMaxRatio: null,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                  maxHeight: double.infinity,
                ),
                side: FLayout.rtl,
                builder: (context) => Container(
                  decoration: BoxDecoration(
                    color: context.theme.colors.background,
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 5,
                        children: [
                          Text(
                            "Filter",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          FSelect<String>.rich(
                            hint: 'Select a Province',
                            label: Text("Province"),
                            format: (s) => s,
                            children: [
                              for (final fruit in fruits)
                                FSelectItem(title: Text(fruit), value: fruit),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      child: asyncResidentState.when(
        data: (rows) {
          return Column(
            children: [
              ...?rows?.data?.map(
                (row) => FItem(
                  prefix: row.sexId == 0
                      ? Icon(FIcons.venus)
                      : Icon(FIcons.mars),
                  suffix: Icon(FIcons.chevronRight),
                  subtitle: Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Builder(
                        builder: (context) {
                          final Jiffy dob = Jiffy.parse(row.dateOfBirth!);

                          return Text(
                            row.dateOfBirth != null
                                ? "(${now.diff(dob, unit: Unit.year)}yo) ${dob.format(pattern: "d MMMM y")}"
                                : "-",
                          );
                        },
                      ),
                      Text(row.address?.toString() ?? "-"),
                    ],
                  ),
                  title: Text(row.name ?? ''),
                  onPress: () {},
                ),
              ),
            ],
          );
        },
        error: (error, stackTrace) {
          debugPrint(error.toString());
          debugPrintStack(stackTrace: stackTrace);
          return Placeholder(color: Colors.red);
        },
        loading: () {
          return Placeholder(color: Colors.blue);
        },
      ),
    );
  }
}
