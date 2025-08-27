import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_person_family_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_person_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_province_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_query_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_resident_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_resident_tile.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_resident_tile_skeletonizer.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_screen_filter_widget.dart';
import 'package:forui_base/router.dart';
import 'package:forui_base/shared/data/models/api_cctv/family_path_params.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:forui_base/shared/presentation/widgets/c_no_item_infinite_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:jiffy/jiffy.dart';

class AppCctvScreen extends StatefulHookConsumerWidget {
  const AppCctvScreen({super.key});

  @override
  ConsumerState<AppCctvScreen> createState() => _AppCctvScreenState();
}

final pagingControllerProvider =
    Provider.autoDispose<PagingController<int, Resident>>((ref) {
      ref.keepAlive(); // ini akan mencegah dispose otomatis

      final controller = PagingController<int, Resident>(
        getNextPageKey: (state) =>
            state.lastPageIsEmpty ? null : state.nextIntPageKey,
        fetchPage: (pageKey) async {
          final int start = (pageKey - 1) * 5;

          await ref
              .read(appCctvResidentNotifierProvider.notifier)
              .perform(
                ref
                    .read(appCctvQueryNotifierProvider)
                    .copyWith(start: start.toString()),
              );

          return ref.read(appCctvResidentNotifierProvider).value!.data!;
        },
      );

      ref.onDispose(controller.dispose);

      return controller;
    });

class _AppCctvScreenState extends ConsumerState<AppCctvScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    ref.watch(appCctvProvinceNotifierProvider);

    final Jiffy now = Jiffy.now();

    return FScaffold(
      resizeToAvoidBottomInset: false,
      header: FHeader.nested(
        title: const Text('App : CCTV (Resident)'),
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
                builder: (context) => AppCctvScreenFilterWidget(),
              );
            },
          ),
        ],
      ),
      child: RefreshIndicator(
        onRefresh: () async {
          ref.read(appCctvQueryNotifierProvider.notifier).reset();
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
                          .read(appCctvPersonNotifierProvider.notifier)
                          .perform(item.id.toString());

                      ref
                          .read(appCctvPersonFamilyNotifierProvider.notifier)
                          .perform(
                            FamilyPathParams(
                              personId: item.id.toString(),
                              familyCardId: item.familyCardId.toString(),
                            ),
                          );

                      context.pushNamed(RouteName.appCctvPerson.name);
                    },
                  ),
                  noItemsFoundIndicatorBuilder: (context) =>
                      CNoItemInfinitePage(),
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
