import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_person_family_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_person_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_person_personal_data_tab_tiles.dart';
import 'package:forui_base/router.dart';
import 'package:forui_base/shared/data/models/api_cctv/person.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jiffy/jiffy.dart';

class AppCctvPersonScreen extends ConsumerStatefulWidget {
  const AppCctvPersonScreen({super.key});

  @override
  ConsumerState<AppCctvPersonScreen> createState() =>
      _AppCctvPersonScreenState();
}

enum Status { personalData, familyData }

class _AppCctvPersonScreenState extends ConsumerState<AppCctvPersonScreen> {
  final Jiffy now = Jiffy.now();

  @override
  Widget build(BuildContext context) {
    final asyncPersonState = ref.watch(appCctvPersonNotifierProvider);
    final asyncFamilyState = ref.watch(appCctvPersonFamilyNotifierProvider);

    return FScaffold(
      header: FHeader.nested(
        title: const Text('Person'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              context.pop();
            },
          ),
        ],
        suffixes: [FHeaderAction(icon: Icon(FIcons.info), onPress: () {})],
      ),
      child: asyncPersonState.when(
        data: (TResponse<Person>? res) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      if (res?.data?.photo != null) {
                        context.pushNamed(
                          RouteName.fullScreenImageBase64Viewer.name,
                          queryParameters: {"base64": res!.data!.photo!},
                        );
                      }
                    },
                    child: SizedBox(
                      height: 180,
                      width: 140,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: res?.data?.photo != null
                                ? MemoryImage(base64Decode(res!.data!.photo!))
                                : AssetImage("assets/images/avatar.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(10),
                FBadge(child: Text(res!.data!.id.toString())),
                Text(
                  res.data!.name!,
                  style: context.theme.typography.lg.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gap(10),
                FTabs(
                  children: [
                    FTabEntry(
                      label: const Icon(FIcons.user),
                      child: FTileGroup(
                        label: const Text('Personal Data'),
                        description: Column(
                          children: [
                            const Text('Personal info summary'),
                            Gap(20),
                          ],
                        ),
                        children: getAppCctvPersonPersonalDataTabTiles(
                          context: context,
                          person: res.data!,
                          now: now,
                        ),
                      ),
                    ),
                    FTabEntry(
                      label: const Icon(FIcons.users),
                      child: FTileGroup(
                        label: const Text('Family Data'),
                        description: Column(
                          children: [
                            const Text('Family information overview'),
                            Gap(20),
                          ],
                        ),
                        children: asyncFamilyState.when(
                          data: (resFamily) {
                            return [
                              ...?resFamily?.data?.map(
                                (fam) => FTile(
                                  title: Text(fam.name ?? "-"),
                                  prefix: fam.sexId == 0
                                      ? Icon(FIcons.venus)
                                      : Icon(FIcons.mars),
                                  suffix: Icon(FIcons.chevronRight),
                                  details: Builder(
                                    builder: (context) {
                                      final Jiffy dob = Jiffy.parse(
                                        fam.dateOfBirth!,
                                      );

                                      return Text(
                                        "(${now.diff(dob, unit: Unit.year)}yo)",
                                      );
                                    },
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(fam.positionName ?? "-"),
                                      Text(fam.id.toString()),
                                      Text(
                                        "${fam.placeOfBirth ?? "-"}, ${fam.dateOfBirth ?? "-"}",
                                      ),
                                    ],
                                  ),
                                  onPress: () {},
                                ),
                              ),
                            ];
                          },
                          error: (error, stackTrave) => [],
                          loading: () => [],
                        ),
                      ),
                    ),
                    FTabEntry(
                      label: const Icon(FIcons.tabletSmartphone),
                      child: FTileGroup(
                        label: const Text('Phone Number'),
                        description: Column(
                          children: [
                            const Text('Phone numbers information overview'),
                            Gap(20),
                          ],
                        ),
                        children: [],
                      ),
                    ),
                  ],
                ),
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
