import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_province_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_query_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_resident_notifier.dart';
import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_hooks/forui_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jiffy/jiffy.dart';

class AppCctvScreen extends StatefulHookConsumerWidget {
  const AppCctvScreen({super.key});

  @override
  ConsumerState<AppCctvScreen> createState() => _AppCctvScreenState();
}

class _AppCctvScreenState extends ConsumerState<AppCctvScreen>
    with TickerProviderStateMixin {
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
    final asyncResidentState = ref.watch(appCctvResidentNotifierProvider);
    final asyncProvinceState = ref.watch(appCctvProvinceNotifierProvider);
    // final queryState = ref.watch(appCctvQueryNotifierProvider);

    final Jiffy now = Jiffy.now();

    final FSelectController<Province> provinceController = useFSelectController(
      vsync: this,
    );

    final FSelectController<Province> cityController = useFSelectController(
      vsync: this,
    );

    final FSelectController<Province> districtController = useFSelectController(
      vsync: this,
    );

    final FSelectController<Province> villageController = useFSelectController(
      vsync: this,
    );

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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                spacing: 10,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Filter",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Gap(10),
                                  asyncProvinceState.when(
                                    data: (res) {
                                      return FSelect<Province>.searchBuilder(
                                        hint: 'Select a Province',
                                        controller: provinceController,
                                        label: Text("Province"),
                                        format: (s) => s.name!,
                                        filter: (query) => query.isEmpty
                                            ? (res?.data ?? [])
                                            : (res?.data ?? []).where(
                                                (f) => f.name!
                                                    .toLowerCase()
                                                    .contains(
                                                      query.toLowerCase(),
                                                    ),
                                              ),
                                        contentBuilder: (context, _, rows) => [
                                          for (final row in rows)
                                            FSelectItem<Province>(
                                              title: Text(row.name!),
                                              value: row,
                                            ),
                                        ],
                                        onChange: (data) {
                                          ref
                                              .read(
                                                appCctvQueryNotifierProvider
                                                    .notifier,
                                              )
                                              .setProvinceId(
                                                data?.id.toString(),
                                              );
                                        },
                                      );
                                    },
                                    error: (error, stackTrace) {
                                      return SizedBox.shrink();
                                    },
                                    loading: () {
                                      return Placeholder();
                                    },
                                  ),
                                  asyncProvinceState.when(
                                    data: (res) {
                                      return FSelect<Province>.searchBuilder(
                                        hint: 'Select a City',
                                        controller: cityController,
                                        label: Text("City"),
                                        format: (s) => s.name!,
                                        filter: (query) => query.isEmpty
                                            ? (res?.data ?? [])
                                            : (res?.data ?? []).where(
                                                (f) => f.name!
                                                    .toLowerCase()
                                                    .contains(
                                                      query.toLowerCase(),
                                                    ),
                                              ),
                                        contentBuilder: (context, _, rows) => [
                                          for (final row in rows)
                                            FSelectItem<Province>(
                                              title: Text(row.name!),
                                              value: row,
                                            ),
                                        ],
                                        onChange: (data) {
                                          ref
                                              .read(
                                                appCctvQueryNotifierProvider
                                                    .notifier,
                                              )
                                              .setProvinceId(
                                                data?.id.toString(),
                                              );
                                        },
                                      );
                                    },
                                    error: (error, stackTrace) {
                                      return SizedBox.shrink();
                                    },
                                    loading: () {
                                      return Placeholder();
                                    },
                                  ),
                                  asyncProvinceState.when(
                                    data: (res) {
                                      return FSelect<Province>.searchBuilder(
                                        hint: 'Select a District',
                                        controller: districtController,
                                        label: Text("District"),
                                        format: (s) => s.name!,
                                        filter: (query) => query.isEmpty
                                            ? (res?.data ?? [])
                                            : (res?.data ?? []).where(
                                                (f) => f.name!
                                                    .toLowerCase()
                                                    .contains(
                                                      query.toLowerCase(),
                                                    ),
                                              ),
                                        contentBuilder: (context, _, rows) => [
                                          for (final row in rows)
                                            FSelectItem<Province>(
                                              title: Text(row.name!),
                                              value: row,
                                            ),
                                        ],
                                        onChange: (data) {
                                          ref
                                              .read(
                                                appCctvQueryNotifierProvider
                                                    .notifier,
                                              )
                                              .setProvinceId(
                                                data?.id.toString(),
                                              );
                                        },
                                      );
                                    },
                                    error: (error, stackTrace) {
                                      return SizedBox.shrink();
                                    },
                                    loading: () {
                                      return Placeholder();
                                    },
                                  ),
                                  asyncProvinceState.when(
                                    data: (res) {
                                      return FSelect<Province>.searchBuilder(
                                        hint: 'Select a Village',
                                        controller: villageController,
                                        label: Text("Village"),
                                        format: (s) => s.name!,
                                        filter: (query) => query.isEmpty
                                            ? (res?.data ?? [])
                                            : (res?.data ?? []).where(
                                                (f) => f.name!
                                                    .toLowerCase()
                                                    .contains(
                                                      query.toLowerCase(),
                                                    ),
                                              ),
                                        contentBuilder: (context, _, rows) => [
                                          for (final row in rows)
                                            FSelectItem<Province>(
                                              title: Text(row.name!),
                                              value: row,
                                            ),
                                        ],
                                        onChange: (data) {
                                          ref
                                              .read(
                                                appCctvQueryNotifierProvider
                                                    .notifier,
                                              )
                                              .setProvinceId(
                                                data?.id.toString(),
                                              );
                                        },
                                      );
                                    },
                                    error: (error, stackTrace) {
                                      return SizedBox.shrink();
                                    },
                                    loading: () {
                                      return Placeholder();
                                    },
                                  ),
                                  FSlider(
                                    label: Text("Age"),
                                    controller:
                                        FContinuousSliderController.range(
                                          selection: FSliderSelection(
                                            min: 0,
                                            max: 1,
                                          ),
                                        ),
                                    marks: [
                                      FSliderMark(value: 0, label: Text('0')),
                                      FSliderMark(
                                        value: 0.25,
                                        label: Text('30'),
                                      ),
                                      FSliderMark(
                                        value: 0.5,
                                        label: Text('60'),
                                      ),
                                      FSliderMark(
                                        value: 0.75,
                                        label: Text('90'),
                                      ),
                                      FSliderMark(value: 1, label: Text('120')),
                                    ],
                                    tooltipBuilder: (controller, value) {
                                      final double newValue = 120 * value;

                                      return Text(newValue.floor().toString());
                                    },
                                  ),
                                  FDateField(label: Text('Date of Birth')),
                                  FTextField(label: Text("Search")),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: FButton(
                                  style: FButtonStyle.outline(),
                                  onPress: () {
                                    // aksi reset
                                  },
                                  prefix: Icon(FIcons.x),
                                  child: Text("Reset"),
                                ),
                              ),
                              Gap(10),
                              Expanded(
                                child: FButton(
                                  onPress: () {
                                    // aksi reset
                                  },
                                  prefix: Icon(FIcons.check),
                                  child: Text("Apply"),
                                ),
                              ),
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
