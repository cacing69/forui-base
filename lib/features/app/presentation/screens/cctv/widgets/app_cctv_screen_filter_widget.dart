import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_province_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_query_notifier.dart';
import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_base/shared/presentation/widgets/f_select_skeletonizer.dart';
import 'package:forui_hooks/forui_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppCctvScreenFilterWidget extends StatefulHookConsumerWidget {
  const AppCctvScreenFilterWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AppCctvScreenFilterWidgetState();
}

class _AppCctvScreenFilterWidgetState
    extends ConsumerState<AppCctvScreenFilterWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final asyncProvinceState = ref.watch(appCctvProvinceNotifierProvider);

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

    return Container(
      decoration: BoxDecoration(color: context.theme.colors.background),
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
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Gap(10),
                      asyncProvinceState.when(
                        data: (res) {
                          return FSelect<Province>.searchBuilder(
                            hint: 'Select a Province',
                            description: Text(
                              "Choose a province from the list",
                            ),
                            controller: provinceController,
                            label: Text("Province"),
                            format: (s) => s.name!,
                            filter: (query) => query.isEmpty
                                ? (res?.data ?? [])
                                : (res?.data ?? []).where(
                                    (f) => f.name!.toLowerCase().contains(
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
                                  .read(appCctvQueryNotifierProvider.notifier)
                                  .setProvinceId(data?.id.toString());
                            },
                          );
                        },
                        error: (error, stackTrace) {
                          return SizedBox.shrink();
                        },
                        loading: () {
                          return FSelectSkeletonizer();
                        },
                      ),
                      asyncProvinceState.when(
                        data: (res) {
                          return FSelect<Province>.searchBuilder(
                            hint: 'Select a City',
                            description: Text(
                              "Choose a city or regency from the list",
                            ),
                            controller: cityController,
                            label: Text("City"),
                            format: (s) => s.name!,
                            filter: (query) => query.isEmpty
                                ? (res?.data ?? [])
                                : (res?.data ?? []).where(
                                    (f) => f.name!.toLowerCase().contains(
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
                                  .read(appCctvQueryNotifierProvider.notifier)
                                  .setProvinceId(data?.id.toString());
                            },
                          );
                        },
                        error: (error, stackTrace) {
                          return SizedBox.shrink();
                        },
                        loading: () {
                          return FSelectSkeletonizer();
                        },
                      ),
                      asyncProvinceState.when(
                        data: (res) {
                          return FSelect<Province>.searchBuilder(
                            hint: 'Select a District',
                            controller: districtController,
                            description: Text(
                              "Choose a district or subdistrict from the list",
                            ),
                            label: Text("District"),
                            format: (s) => s.name!,
                            filter: (query) => query.isEmpty
                                ? (res?.data ?? [])
                                : (res?.data ?? []).where(
                                    (f) => f.name!.toLowerCase().contains(
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
                                  .read(appCctvQueryNotifierProvider.notifier)
                                  .setProvinceId(data?.id.toString());
                            },
                          );
                        },
                        error: (error, stackTrace) {
                          return SizedBox.shrink();
                        },
                        loading: () {
                          return FSelectSkeletonizer();
                        },
                      ),
                      asyncProvinceState.when(
                        data: (res) {
                          return FSelect<Province>.searchBuilder(
                            hint: 'Select a Village',
                            description: Text(
                              "Choose a village or urban area from the list",
                            ),
                            controller: villageController,
                            label: Text("Village"),
                            format: (s) => s.name!,
                            filter: (query) => query.isEmpty
                                ? (res?.data ?? [])
                                : (res?.data ?? []).where(
                                    (f) => f.name!.toLowerCase().contains(
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
                                  .read(appCctvQueryNotifierProvider.notifier)
                                  .setProvinceId(data?.id.toString());
                            },
                          );
                        },
                        error: (error, stackTrace) {
                          return SizedBox.shrink();
                        },
                        loading: () {
                          return FSelectSkeletonizer();
                        },
                      ),
                      FSlider(
                        label: Text("Age"),
                        description: Text(
                          "Select an age between 0 and 120 years",
                        ),
                        controller: FContinuousSliderController.range(
                          selection: FSliderSelection(min: 0, max: 1),
                        ),
                        marks: [
                          FSliderMark(value: 0, label: Text('0')),
                          FSliderMark(value: 0.25, label: Text('30')),
                          FSliderMark(value: 0.5, label: Text('60')),
                          FSliderMark(value: 0.75, label: Text('90')),
                          FSliderMark(value: 1, label: Text('120')),
                        ],
                        tooltipBuilder: (controller, value) {
                          final double newValue = 120 * value;

                          return Text(newValue.floor().toString());
                        },
                      ),
                      FDateField(
                        label: Text('Date of Birth'),
                        description: Text("Choose a birrth date"),
                      ),
                      FTextField(
                        label: Text("Search"),
                        description: Text(
                          "Enter a search query (e.g., name, phone, ID)",
                        ),
                      ),
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
    );
  }
}
