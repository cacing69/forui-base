import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_company_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_family_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_gojek_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_phone_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_pln_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_vehicle_notifier.dart';
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
    final asyncPhoneState = ref.watch(appCctvPersonPhoneNotifierProvider);
    final asyncGojekState = ref.watch(appCctvPersonGojekNotifierProvider);
    final asyncPlnState = ref.watch(appCctvPersonPlnNotifierProvider);
    final asyncVehicleState = ref.watch(appCctvPersonVehicleNotifierProvider);
    final asyncCompanyState = ref.watch(appCctvPersonCompanyNotifierProvider);

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
                            resFamily?.data?.sort((a, b) {
                              final posA = a.positionId ?? 0;
                              final posB = b.positionId ?? 0;
                              return posA.compareTo(posB);
                            });

                            return [
                              ...?resFamily?.data?.map(
                                (fam) => FTile(
                                  title: Text(fam.name ?? "-"),
                                  prefix: fam.sexId == 0
                                      ? Icon(FIcons.venus)
                                      : Icon(FIcons.mars),
                                  suffix: Icon(FIcons.chevronRight),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(fam.positionName ?? "-"),
                                          Gap(3),
                                          Builder(
                                            builder: (context) {
                                              final Jiffy dob = Jiffy.parse(
                                                fam.dateOfBirth!,
                                              );

                                              return Text(
                                                "(${now.diff(dob, unit: Unit.year)}yo)",
                                              );
                                            },
                                          ),
                                        ],
                                      ),
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
                        children: asyncPhoneState.when(
                          data: (rows) {
                            if (rows?.data?.isEmpty ?? true) {
                              return [
                                FTile(title: Text("No phone numbers found")),
                              ];
                            } else {
                              return [
                                ...?rows?.data?.map(
                                  (row) => FTile(
                                    title: Text(row.id?.toString() ?? "-"),
                                    prefix: Icon(FIcons.smartphone),
                                    suffix: Icon(FIcons.chevronRight),
                                    details: Text(row.providerName ?? "-"),
                                    subtitle: Text(row.registeredDate ?? "-"),
                                    onPress: () {},
                                  ),
                                ),
                              ];
                            }
                          },
                          error: (error, stackTrave) => [],
                          loading: () => [],
                        ),
                      ),
                    ),
                    FTabEntry(
                      label: const Icon(FIcons.cable),
                      child: Column(
                        children: [
                          FTileGroup(
                            label: const Text('PLN'),
                            children: asyncPlnState.when(
                              data: (rows) {
                                if (rows?.data?.isEmpty ?? true) {
                                  return [
                                    FTile(title: Text("No PLN account found")),
                                  ];
                                } else {
                                  return [
                                    ...rows!.data!.map(
                                      (row) => FTile(
                                        title: Text(row.id?.toString() ?? "-"),
                                        prefix: Icon(FIcons.zap),
                                        suffix: Icon(FIcons.chevronRight),
                                        details: Text(
                                          row.energyTypeName ?? "-",
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(row.email ?? "-"),
                                            Text(row.address ?? "-"),
                                            Text(row.plantPowerName ?? "-"),
                                          ],
                                        ),
                                        onPress: () {},
                                      ),
                                    ),
                                  ];
                                }
                              },
                              error: (error, stackTrave) => [],
                              loading: () => [],
                            ),
                          ),
                          FTileGroup(
                            label: const Text('Gojek'),
                            children: asyncGojekState.when(
                              data: (rows) {
                                if (rows?.data?.isEmpty ?? true) {
                                  return [
                                    FTile(
                                      title: Text("No Gojek account found"),
                                    ),
                                  ];
                                } else {
                                  return [
                                    ...?rows?.data?.map(
                                      (row) => FTile(
                                        title: Text(
                                          row.name?.toString() ?? "-",
                                        ),
                                        prefix: Icon(FIcons.carTaxiFront),
                                        suffix: Icon(FIcons.chevronRight),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              row.phone?.numberLong
                                                      .toString() ??
                                                  "-",
                                            ),
                                            Text(row.email ?? "-"),
                                          ],
                                        ),
                                        onPress: () {},
                                      ),
                                    ),
                                  ];
                                }
                              },
                              error: (error, stackTrave) => [],
                              loading: () => [],
                            ),
                          ),
                        ],
                      ),
                    ),
                    FTabEntry(
                      label: const Icon(FIcons.carFront),
                      child: FTileGroup(
                        label: const Text('Vehicles'),
                        description: Column(
                          children: [
                            const Text('Overview of registered vehicles'),
                            Gap(20),
                          ],
                        ),
                        children: asyncVehicleState.when(
                          data: (rows) {
                            if (rows?.data?.isEmpty ?? true) {
                              return [FTile(title: Text("No vehicles"))];
                            } else {
                              return [
                                ...?rows?.data?.map(
                                  (row) => FTile(
                                    title: Text(
                                      row.brand
                                              ?.replaceAll(RegExp(r'\s+'), ' ')
                                              .trim() ??
                                          "-",
                                    ),
                                    prefix: Icon(FIcons.smartphone),
                                    suffix: Icon(FIcons.chevronRight),
                                    details: Text(row.id ?? "-"),
                                    subtitle: Text(
                                      row.color
                                              ?.replaceAll(RegExp(r'\s+'), ' ')
                                              .trim() ??
                                          "-",
                                    ),

                                    onPress: () {},
                                  ),
                                ),
                              ];
                            }
                          },
                          error: (error, stackTrace) {
                            debugPrint(error.toString());
                            debugPrintStack(stackTrace: stackTrace);
                            return [];
                          },
                          loading: () => [],
                        ),
                      ),
                    ),
                    FTabEntry(
                      label: const Icon(FIcons.factory),
                      child: FTileGroup(
                        label: const Text('Companies'),
                        description: Column(
                          children: [
                            const Text('Overview of company information'),
                            Gap(20),
                          ],
                        ),
                        children: asyncCompanyState.when(
                          data: (rows) {
                            if (rows?.data?.isEmpty ?? true) {
                              return [FTile(title: Text("No companies found"))];
                            } else {
                              return [
                                ...?rows?.data?.map(
                                  (row) => FTile(
                                    title: Text(row.name ?? "-"),
                                    prefix: Icon(FIcons.building2),
                                    suffix: Icon(FIcons.chevronRight),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(row.id ?? "-"),
                                        Text(row.address ?? "-"),
                                      ],
                                    ),
                                    onPress: () {},
                                  ),
                                ),
                              ];
                            }
                          },
                          error: (error, stackTrave) => [],
                          loading: () => [],
                        ),
                      ),
                    ),
                    FTabEntry(
                      label: const Icon(FIcons.idCard),
                      child: FTileGroup(
                        label: const Text('Overview'),
                        children: [
                          FTile(
                            prefix: Icon(FIcons.idCard),
                            suffix: Icon(FIcons.eye),
                            title: Text("E-KTP"),
                          ),
                        ],
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
          return FAlert(
            title: const Text('Error!'),
            subtitle: Text(error.toString()),
            style: FAlertStyle.destructive(),
          );
        },
        loading: () => Center(child: FProgress.circularIcon()),
      ),
    );
  }
}
