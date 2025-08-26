import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_province_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_resident_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_resident_tile.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_resident_tile_skeletonizer.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_screen_filter_widget.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
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
  @override
  Widget build(BuildContext context) {
    final asyncResidentState = ref.watch(appCctvResidentNotifierProvider);

    ref.watch(appCctvProvinceNotifierProvider);

    final Jiffy now = Jiffy.now();

    return FScaffold(
      resizeToAvoidBottomInset: false,
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
                builder: (context) => AppCctvScreenFilterWidget(),
              );
            },
          ),
        ],
      ),
      child: asyncResidentState.when(
        data: (rows) {
          return Column(
            children: [
              (rows?.data?.isEmpty ?? false)
                  ? Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FIcons.frown, size: 100),
                            Gap(10),
                            Text(
                              "No data",
                              style: context.theme.typography.base.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
              ...?rows?.data?.map(
                (row) => AppCctvResidentTile(resident: row, now: now),
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
          return Column(children: [AppCctvResidentTileSkeletonizer()]);
        },
      ),
    );
  }
}
