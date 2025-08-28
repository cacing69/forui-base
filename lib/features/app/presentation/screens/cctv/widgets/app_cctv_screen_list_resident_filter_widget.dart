import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_city_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_district_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_province_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_list_resident_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_list_resident_screen.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_village_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_screen_list_resident_filter_widget_notifier.dart';
import 'package:forui_base/shared/data/models/api_cctv/city.dart';
import 'package:forui_base/shared/data/models/api_cctv/district.dart';
import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/village.dart';
import 'package:forui_base/shared/presentation/widgets/f_select_skeletonizer.dart';
import 'package:forui_hooks/forui_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class AppCctvScreenListResidentFilterWidget extends StatefulHookConsumerWidget {
  const AppCctvScreenListResidentFilterWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AppCctvScreenListResidentFilterWidgetState();
}

class _AppCctvScreenListResidentFilterWidgetState
    extends ConsumerState<AppCctvScreenListResidentFilterWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final filterState = ref.watch(
      appCctvScreenListResidentFilterWidgetNotifierProvider,
    );

    final asyncProvinceState = ref.watch(appCctvProvinceNotifierProvider);
    final asyncCityState = ref.watch(appCctvCityNotifierProvider);
    final asyncDistrictState = ref.watch(appCctvDistrictNotifierProvider);
    final asyncVillageState = ref.watch(appCctvVillageNotifierProvider);

    final TextEditingController searchController = useTextEditingController(
      text: filterState.search,
    );

    final FSelectController<Province> provinceController = useFSelectController(
      vsync: this,
      value: filterState.province,
    );

    final FSelectController<City> cityController = useFSelectController(
      vsync: this,
      value: filterState.city,
    );

    final FSelectController<District> districtController = useFSelectController(
      vsync: this,
      value: filterState.district,
    );

    final FSelectController<Village> villageController = useFSelectController(
      vsync: this,
      value: filterState.village,
    );

    final FContinuousSliderController minMaxController =
        useFContinuousRangeSliderController(
          selection: FSliderSelection(
            min: (filterState.minAge ?? 0) / 120,
            max: (filterState.maxAge ?? 0) / 120,
          ),
          stepPercentage: 0.1,
        );

    final FDateFieldController dobController = useFDateFieldController(
      initialDate: filterState.dateOfBirth != null
          ? DateTime.parse(filterState.dateOfBirth!)
          : null,
    );

    return FScaffold(
      resizeToAvoidBottomInset: true,
      child: Container(
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
                          "Filter Resident",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Gap(5),
                        asyncProvinceState.when(
                          data: (res) {
                            return FSelect<Province>.searchBuilder(
                              hint: 'Select a Province',
                              description: Text(
                                "Choose a province from the list",
                              ),
                              controller: provinceController,
                              clearable: true,
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
                                    .read(
                                      appCctvScreenListResidentFilterWidgetNotifierProvider
                                          .notifier,
                                    )
                                    .setProvince(data);

                                ref
                                    .read(appCctvCityNotifierProvider.notifier)
                                    .perform(data!.id.toString());

                                ref
                                    .read(
                                      appCctvScreenListResidentFilterWidgetNotifierProvider
                                          .notifier,
                                    )
                                    .setCity(null);
                                ref
                                    .read(
                                      appCctvScreenListResidentFilterWidgetNotifierProvider
                                          .notifier,
                                    )
                                    .setDistrict(null);
                                ref
                                    .read(
                                      appCctvScreenListResidentFilterWidgetNotifierProvider
                                          .notifier,
                                    )
                                    .setVillage(null);

                                cityController.value = null;
                                districtController.value = null;
                                villageController.value = null;
                              },
                            );
                          },
                          error: (error, stackTrace) {
                            return SizedBox.shrink();
                          },
                          loading: () {
                            return FSelectSkeletonizer(
                              showDesc: true,
                              label: "Province",
                            );
                          },
                        ),
                        asyncCityState.when(
                          data: (res) {
                            return FSelect<City>.searchBuilder(
                              hint: 'Select a City',
                              description: Text(
                                "Choose a city or regency from the list",
                              ),
                              controller: cityController,
                              clearable: true,
                              enabled: provinceController.value != null,
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
                                  FSelectItem<City>(
                                    title: Text(row.name!),
                                    value: row,
                                  ),
                              ],
                              onChange: (data) {
                                ref
                                    .read(
                                      appCctvScreenListResidentFilterWidgetNotifierProvider
                                          .notifier,
                                    )
                                    .setCity(data);

                                ref
                                    .read(
                                      appCctvDistrictNotifierProvider.notifier,
                                    )
                                    .perform(data!.id.toString());

                                ref
                                    .read(
                                      appCctvScreenListResidentFilterWidgetNotifierProvider
                                          .notifier,
                                    )
                                    .setDistrict(null);
                                ref
                                    .read(
                                      appCctvScreenListResidentFilterWidgetNotifierProvider
                                          .notifier,
                                    )
                                    .setVillage(null);

                                districtController.value = null;
                                villageController.value = null;
                              },
                            );
                          },
                          error: (error, stackTrace) {
                            return SizedBox.shrink();
                          },
                          loading: () {
                            return FSelectSkeletonizer(
                              showDesc: true,
                              label: "City",
                            );
                          },
                        ),
                        asyncDistrictState.when(
                          data: (res) {
                            return FSelect<District>.searchBuilder(
                              hint: 'Select a District',
                              controller: districtController,
                              clearable: true,
                              enabled:
                                  provinceController.value != null &&
                                  cityController.value != null,
                              description: Text(
                                "Choose a district from the list",
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
                                  FSelectItem<District>(
                                    title: Text(row.name!),
                                    value: row,
                                  ),
                              ],
                              onChange: (data) {
                                ref
                                    .read(
                                      appCctvScreenListResidentFilterWidgetNotifierProvider
                                          .notifier,
                                    )
                                    .setDistrict(data);

                                ref
                                    .read(
                                      appCctvVillageNotifierProvider.notifier,
                                    )
                                    .perform(data!.id.toString());

                                ref
                                    .read(
                                      appCctvScreenListResidentFilterWidgetNotifierProvider
                                          .notifier,
                                    )
                                    .setVillage(null);

                                villageController.value = null;
                              },
                            );
                          },
                          error: (error, stackTrace) {
                            return SizedBox.shrink();
                          },
                          loading: () {
                            return FSelectSkeletonizer(
                              showDesc: true,
                              label: "District",
                            );
                          },
                        ),
                        asyncVillageState.when(
                          data: (res) {
                            return FSelect<Village>.searchBuilder(
                              hint: 'Select a Village',
                              enabled:
                                  provinceController.value != null &&
                                  cityController.value != null &&
                                  districtController.value != null,
                              description: Text(
                                "Choose a village from the list",
                              ),
                              controller: villageController,
                              clearable: true,
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
                                  FSelectItem<Village>(
                                    title: Text(row.name!),
                                    value: row,
                                  ),
                              ],
                              onChange: (data) {
                                ref
                                    .read(
                                      appCctvScreenListResidentFilterWidgetNotifierProvider
                                          .notifier,
                                    )
                                    .setVillage(data);
                              },
                            );
                          },
                          error: (error, stackTrace) {
                            return SizedBox.shrink();
                          },
                          loading: () {
                            return FSelectSkeletonizer(
                              showDesc: true,
                              label: "Village",
                            );
                          },
                        ),
                        FSlider(
                          enabled: true,
                          label: Text("Age"),
                          // initialSelection: FSliderSelection(min: 0, max: 1),
                          description: Text(
                            "Select an age between 0 and 120 years",
                          ),
                          controller: minMaxController,
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
                          onChange: (FSliderSelection value) {
                            debugPrint(value.toString());

                            final int minValue = (120 * value.offset.min)
                                .floor();
                            final int maxValue = (120 * value.offset.max)
                                .floor();

                            ref
                                .read(
                                  appCctvScreenListResidentFilterWidgetNotifierProvider
                                      .notifier,
                                )
                                .setMinMaxAge(minValue, maxValue);
                          },
                        ),
                        FDateField(
                          label: Text('Date of Birth'),
                          controller: dobController,
                          description: Text("Choose date of birth"),
                          onChange: (value) {
                            if (value != null) {
                              ref
                                  .read(
                                    appCctvScreenListResidentFilterWidgetNotifierProvider
                                        .notifier,
                                  )
                                  .setDateOfBirth(
                                    DateFormat("yyyy-MM-dd").format(value),
                                  );
                            } else {
                              ref
                                  .read(
                                    appCctvScreenListResidentFilterWidgetNotifierProvider
                                        .notifier,
                                  )
                                  .setDateOfBirth(null);
                            }
                          },
                        ),
                        FTextField(
                          label: Text("Search"),
                          controller: searchController,
                          clearable: (e) => e.text.isNotEmpty,
                          onChange: (value) {
                            ref
                                .read(
                                  appCctvScreenListResidentFilterWidgetNotifierProvider
                                      .notifier,
                                )
                                .setSearch(value);
                          },
                          description: Text("Type a search query"),
                        ),
                        Gap(20),
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
                          ref
                              .read(
                                appCctvScreenListResidentFilterWidgetNotifierProvider
                                    .notifier,
                              )
                              .reset();

                          ref.read(pagingResidentControllerProvider).refresh();
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
                          // widget.pagingController.refresh();

                          ref
                              .read(
                                appCctvListResidentNotifierProvider.notifier,
                              )
                              .perform(
                                ResidentQuery(
                                  provinceId:
                                      filterState.province?.id.toString() ??
                                      "0",
                                  cityId:
                                      filterState.city?.id.toString() ?? "0",
                                  districtId:
                                      filterState.district?.id.toString() ??
                                      "0",
                                  villageId:
                                      filterState.village?.id.toString() ?? "0",
                                  search: filterState.search ?? "",
                                ),
                              );

                          ref.read(pagingResidentControllerProvider).refresh();

                          context.pop();
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
  }
}
