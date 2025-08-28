import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/app_routes.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_company_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_family_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_gojek_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_phone_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_pln_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_vehicle_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_province_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_list_resident_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_resident_tile.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_resident_tile_skeletonizer.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_screen_list_resident_filter_widget_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_screen_list_resident_filter_widget.dart';
import 'package:forui_base/shared/data/models/api_cctv/family_path_params.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:jiffy/jiffy.dart';

class AppCctvListResidentScreen extends StatefulHookConsumerWidget {
  const AppCctvListResidentScreen({super.key});

  @override
  ConsumerState<AppCctvListResidentScreen> createState() =>
      _AppCctvListResidentScreenState();
}

final pagingControllerProvider =
    Provider.autoDispose<PagingController<int, Resident>>((ref) {
      ref.keepAlive(); // ini akan mencegah dispose otomatis

      final controller = PagingController<int, Resident>(
        getNextPageKey: (state) {
          return state.lastPageIsEmpty ? null : state.nextIntPageKey;
        },
        fetchPage: (pageKey) async {
          // validate first dont auto request
          final filterState = ref.read(
            appCctvScreenListResidentFilterWidgetNotifierProvider,
          );

          if (filterState.province?.id == null &&
              filterState.city?.id == null &&
              filterState.district?.id == null &&
              filterState.village?.id == null &&
              filterState.dateOfBirth == null &&
              (filterState.minAge ?? 0) == 0 &&
              (filterState.maxAge ?? 120) == 120 &&
              (filterState.search ?? "").isEmpty) {
            return [];
          }

          final int start = (pageKey - 1) * 5;

          final lastRequest =
              ref.read(appCctvListResidentNotifierProvider).value?.data ?? [];

          await ref
              .read(appCctvListResidentNotifierProvider.notifier)
              .perform(
                ResidentQuery(
                  provinceId: filterState.province?.id.toString() ?? "0",
                  cityId: filterState.city?.id.toString() ?? "0",
                  districtId: filterState.district?.id.toString() ?? "0",
                  villageId: filterState.village?.id.toString() ?? "0",
                  search: filterState.search ?? "",
                  minAge: filterState.minAge?.toString() ?? "0",
                  maxAge: filterState.maxAge?.toString() ?? "120",
                  birthDate: filterState.dateOfBirth ?? "",
                  start: start.toString(),
                ),
              );

          final latestRequest =
              ref.read(appCctvListResidentNotifierProvider).value?.data ?? [];

          final isDuplicate =
              latestRequest.length == lastRequest.length &&
              List.generate(
                latestRequest.length,
                (index) => index,
              ).every((i) => latestRequest[i] == lastRequest[i]);

          if (isDuplicate) {
            return [];
          }

          return ref.read(appCctvListResidentNotifierProvider).value!.data!;
        },
      );

      ref.onDispose(controller.dispose);

      return controller;
    });

class _AppCctvListResidentScreenState
    extends ConsumerState<AppCctvListResidentScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(appCctvScreenListResidentFilterWidgetNotifierProvider.notifier)
          .reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(appCctvProvinceNotifierProvider);

    final Jiffy now = Jiffy.now();

    return FScaffold(
      resizeToAvoidBottomInset: false,
      header: FHeader.nested(
        title: const Text('App : CCTV (Person)'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              context.pop();
            },
          ),
        ],
        suffixes: [
          FHeaderAction(
            icon: Icon(FIcons.fileArchive),
            onPress: () {
              context.pushNamed(FeatureAppRouteName.appCctvListCompany.name);
            },
          ),
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
                builder: (context) => AppCctvScreenListResidentFilterWidget(),
              );
            },
          ),
        ],
      ),
      child: RefreshIndicator(
        onRefresh: () async {
          ref
              .read(
                appCctvScreenListResidentFilterWidgetNotifierProvider.notifier,
              )
              .reset();

          ref.watch(pagingControllerProvider).refresh();
        },
        child: PagingListener(
          controller: ref.watch(pagingControllerProvider),
          builder: (context, state, fetchNextPage) =>
              PagedListView<int, Resident>.separated(
                separatorBuilder: (context, index) => FDivider(
                  style: (e) => e.copyWith(padding: EdgeInsets.all(1)),
                ),
                state: state,
                fetchNextPage: fetchNextPage,
                builderDelegate: PagedChildBuilderDelegate(
                  itemBuilder: (context, item, index) => AppCctvResidentTile(
                    resident: item,
                    now: now,
                    onPress: () {
                      ref
                          .read(
                            appCctvPersonNotifierProvider(
                              item.id.toString(),
                            ).notifier,
                          )
                          .perform(item.id.toString());

                      ref
                          .read(appCctvPersonFamilyNotifierProvider.notifier)
                          .perform(
                            FamilyPathParams(
                              personId: item.id.toString(),
                              familyCardId: item.familyCardId.toString(),
                            ),
                          );

                      ref
                          .read(
                            appCctvPersonPhoneNotifierProvider(
                              item.id.toString(),
                            ).notifier,
                          )
                          .perform(item.id.toString());

                      ref
                          .read(
                            appCctvPersonGojekNotifierProvider(
                              item.id.toString(),
                            ).notifier,
                          )
                          .perform(item.id.toString());

                      ref
                          .read(
                            appCctvPersonPlnNotifierProvider(
                              item.id.toString(),
                            ).notifier,
                          )
                          .perform(item.id.toString());

                      ref
                          .read(
                            appCctvPersonVehicleNotifierProvider(
                              item.id.toString(),
                            ).notifier,
                          )
                          .perform(item.id.toString());

                      ref
                          .read(
                            appCctvPersonCompanyNotifierProvider(
                              item.id.toString(),
                            ).notifier,
                          )
                          .perform(item.id.toString());

                      context.pushNamed(
                        FeatureAppRouteName.appCctvPerson.name,
                        pathParameters: {"personId": item.id.toString()},
                      );
                    },
                  ),
                  firstPageProgressIndicatorBuilder: (context) =>
                      AppCctvResidentTileSkeletonizer(),
                  newPageProgressIndicatorBuilder: (context) =>
                      AppCctvResidentTileSkeletonizer(),
                ),
              ),
        ),
      ),
    );
  }
}
