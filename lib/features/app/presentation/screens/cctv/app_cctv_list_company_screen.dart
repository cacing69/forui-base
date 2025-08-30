import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/app_routes.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_list_company_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_company_tile.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_resident_tile_skeletonizer.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_screen_list_company_filter_widget_notifier.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/data/models/api_cctv/company_query.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AppCctvListCompanyScreen extends StatefulHookConsumerWidget {
  const AppCctvListCompanyScreen({super.key});

  @override
  ConsumerState<AppCctvListCompanyScreen> createState() =>
      _AppCctvListCompanyScreenState();
}

final pagingCompanyControllerProvider =
    Provider.autoDispose<PagingController<int, Company>>((ref) {
      ref.keepAlive();

      final controller = PagingController<int, Company>(
        getNextPageKey: (state) {
          return state.lastPageIsEmpty ? null : state.nextIntPageKey;
        },
        fetchPage: (pageKey) async {
          // final filterState = ref.read(
          //   appCctvScreenListCompanyFilterWidgetNotifierProvider,
          // );

          // TODO : Activate when filter is enabled
          // if ((filterState.start ?? "0") == "0" &&
          //     (filterState.length ?? "5") == "5" &&
          //     (filterState.search ?? "").isEmpty) {
          //   return [];
          // }

          final int start = (pageKey - 1) * 5;

          final lastRequest =
              ref.read(appCctvListCompanyNotifierProvider).value?.data ?? [];

          await ref
              .read(appCctvListCompanyNotifierProvider.notifier)
              .perform(CompanyQuery(start: start.toString()));

          final latestRequest =
              ref.read(appCctvListCompanyNotifierProvider).value?.data ?? [];

          final isDuplicate =
              latestRequest.length == lastRequest.length &&
              List.generate(
                latestRequest.length,
                (index) => index,
              ).every((i) => latestRequest[i] == lastRequest[i]);

          if (isDuplicate) {
            return [];
          }

          return ref.read(appCctvListCompanyNotifierProvider).value?.data ?? [];
        },
      );

      ref.onDispose(controller.dispose);

      return controller;
    });

class _AppCctvListCompanyScreenState
    extends ConsumerState<AppCctvListCompanyScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(appCctvScreenListCompanyFilterWidgetNotifierProvider.notifier)
          .reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      resizeToAvoidBottomInset: false,
      header: FHeader.nested(
        title: const Text('CCTV : Company'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              context.pop();
            },
          ),
        ],
        suffixes: [FHeaderAction(icon: Icon(FIcons.funnel), onPress: () {})],
      ),
      child: RefreshIndicator(
        onRefresh: () async {
          ref
              .read(
                appCctvScreenListCompanyFilterWidgetNotifierProvider.notifier,
              )
              .reset();

          ref.read(pagingCompanyControllerProvider).refresh();
        },
        child: PagingListener(
          controller: ref.watch(pagingCompanyControllerProvider),
          builder: (context, state, fetchNextPage) =>
              PagedListView<int, Company>.separated(
                separatorBuilder: (context, index) => FDivider(
                  style: (e) => e.copyWith(padding: EdgeInsets.all(1)),
                ),
                state: state,
                fetchNextPage: fetchNextPage,
                builderDelegate: PagedChildBuilderDelegate(
                  itemBuilder: (context, Company item, int index) =>
                      AppCctvCompanyTile(
                        company: item,
                        onPress: () {
                          context.pushNamed(
                            FeatureAppRouteName.appCctvCompany.name,
                            pathParameters: {"companyId": "${item.id}"},
                            extra: item,
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
