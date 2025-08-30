import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/assets.dart';
import 'package:forui_base/core/utils/helpers.dart';
import 'package:forui_base/features/app/presentation/screens/app_routes.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/app_cctv_person_skeletonizer.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_company_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_family_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_gojek_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_phone_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_pln_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_vehicle_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_person_personal_data_tab_tiles.dart';
import 'package:forui_base/features/block/presentation/screens/block_routes.dart';
import 'package:forui_base/router.dart';
import 'package:forui_base/shared/data/models/api_cctv/family_path_params.dart';
import 'package:forui_base/shared/data/models/api_cctv/person.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/load_person_data_usecase_pack.dart';
import 'package:gal/gal.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jiffy/jiffy.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AppCctvPersonScreen extends ConsumerStatefulWidget {
  final String personId;
  final String sourceScreen;

  const AppCctvPersonScreen({
    super.key,
    required this.personId,
    required this.sourceScreen,
  });

  @override
  ConsumerState<AppCctvPersonScreen> createState() =>
      _AppCctvPersonScreenState();
}

enum Status { personalData, familyData }

class _AppCctvPersonScreenState extends ConsumerState<AppCctvPersonScreen> {
  final Jiffy now = Jiffy.now();

  @override
  Widget build(BuildContext context) {
    final asyncPersonState = ref.watch(
      appCctvPersonNotifierProvider(widget.personId),
    );
    final asyncFamilyState = ref.watch(appCctvPersonFamilyNotifierProvider);

    final asyncPhoneState = ref.watch(
      appCctvPersonPhoneNotifierProvider(widget.personId),
    );
    final asyncGojekState = ref.watch(
      appCctvPersonGojekNotifierProvider(widget.personId),
    );
    final asyncPlnState = ref.watch(
      appCctvPersonPlnNotifierProvider(widget.personId),
    );
    final asyncVehicleState = ref.watch(
      appCctvPersonVehicleNotifierProvider(widget.personId),
    );
    final asyncCompanyState = ref.watch(
      appCctvPersonCompanyNotifierProvider(widget.personId),
    );

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
        suffixes: [
          FHeaderAction(
            icon: Icon(FIcons.info),
            onPress: () {
              showFDialog(
                context: context,
                builder: (context, style, animation) => FDialog(
                  animation: animation,
                  direction: Axis.horizontal,
                  title: const Text('About'),
                  body: const Text(
                    'Aute ex occaecat elit adipisicing laboris nisi et sunt deserunt do est.',
                  ),
                  actions: [
                    FButton(
                      style: FButtonStyle.outline(),
                      onPress: () => Navigator.of(context).pop(),
                      child: const Text('Cancel'),
                    ),
                    FButton(
                      onPress: () => Navigator.of(context).pop(),
                      child: const Text('Continue'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      child: asyncPersonState.when(
        data: (TResponse<Person>? res) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      final photo = res?.data?.photo;
                      if (photo != null && photo.isNotEmpty) {
                        context.pushNamed(
                          RouteName.fullScreenImageBase64Viewer.name,
                          queryParameters: {"base64": photo},
                        );
                      }
                    },
                    child: SizedBox(
                      height: 180,
                      width: 140,
                      child: Builder(
                        builder: (context) {
                          final photo = res?.data?.photo;
                          // image:

                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: (photo != null && photo.isNotEmpty)
                                    ? MemoryImage(base64Decode(photo))
                                    : AssetImage(Assets.pngImages.avatar)
                                          as ImageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Gap(10),
                FBadge(child: Text(res?.data?.id.toString() ?? "-")),
                Text(
                  res?.data?.name ?? "-",
                  style: context.theme.typography.lg.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gap(10),
                FTabs(
                  onChange: (index) {
                    if (index == 1 && widget.sourceScreen == "company") {
                      if (ref
                              .read(appCctvPersonFamilyNotifierProvider)
                              .value
                              ?.data ==
                          null) {
                        ref
                            .read(appCctvPersonFamilyNotifierProvider.notifier)
                            .perform(
                              FamilyPathParams(
                                personId: res!.data!.id.toString(),
                                familyCardId: res.data!.familyCardId.toString(),
                              ),
                            );
                      }
                    }
                  },
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
                          person: res?.data ?? Person(),
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
                                              final dobStr = fam.dateOfBirth;
                                              if (dobStr == null ||
                                                  dobStr.isEmpty) {
                                                return const SizedBox.shrink();
                                              }
                                              final Jiffy dob = Jiffy.parse(
                                                dobStr,
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
                                  onPress: () {
                                    final String personId = fam.id.toString();

                                    // TODO : Request familyCardId

                                    ref
                                        .read(loadPersonDataUsecasePackProvider)
                                        .call(
                                          personId: personId,
                                          loadFamily: false,
                                          familyCardId: null,
                                        );

                                    context.pushNamed(
                                      FeatureAppRouteName.appCctvPerson.name,
                                      pathParameters: {
                                        "personId": fam.id.toString(),
                                        "sourceScreen": "person",
                                      },
                                    );
                                  },
                                ),
                              ),
                            ];
                          },
                          error: (error, stackTrave) => [],
                          loading: () => [
                            FTile(
                              title: Skeletonizer(child: Text("Lorem ipsum")),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Skeletonizer(
                                    child: Text("Lorem ipsum dolor"),
                                  ),
                                  Skeletonizer(
                                    child: Text("Lorem ipsum dolor"),
                                  ),
                                ],
                              ),
                              prefix: Skeletonizer(child: Icon(FIcons.venus)),
                              suffix: Skeletonizer(
                                child: Icon(FIcons.chevronRight),
                              ),
                            ),
                          ],
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
                                    suffix: Icon(FIcons.eye),
                                    details: Text(row.providerName ?? "-"),
                                    subtitle: Text(row.registeredDate ?? "-"),
                                    onPress: () {
                                      showFDialog(
                                        context: context,
                                        builder: (context, style, animation) => FDialog(
                                          style: style,
                                          animation: animation,
                                          direction: Axis.horizontal,
                                          title: const Text('Action'),
                                          body: FTileGroup(
                                            children: [
                                              FTile(
                                                prefix: Icon(FIcons.copy),
                                                title: Text("Copy"),
                                                onPress: () async {
                                                  await Clipboard.setData(
                                                    ClipboardData(
                                                      text: row.id.toString(),
                                                    ),
                                                  );
                                                },
                                              ),
                                              FTile(
                                                prefix: Icon(
                                                  FIcons.externalLink,
                                                ),
                                                title: Text("aduannomor.id"),
                                                onPress: () {
                                                  context.pushNamed(
                                                    BlockRouteName
                                                        .blockWebviewSubmit
                                                        .name,
                                                    pathParameters: {
                                                      "phoneNo": row.id
                                                          .toString(),
                                                    },
                                                  );
                                                },
                                              ),
                                              FTile(
                                                prefix: Icon(
                                                  FIcons.externalLink,
                                                ),
                                                title: Text("kredibel.com"),
                                                onPress: () {
                                                  // TODO : https://www.kredibel.com/phone/id/82173776770
                                                  showComingSoonFlutterToast(
                                                    context,
                                                  );
                                                },
                                              ),
                                              FTile(
                                                prefix: Icon(
                                                  FIcons.externalLink,
                                                ),
                                                title: Text("kredibel.com"),
                                                onPress: () {
                                                  // TODO : https://ceebydith.com/cek-hlr-lokasi-hp.html
                                                  showComingSoonFlutterToast(
                                                    context,
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                          actions: [
                                            FButton(
                                              onPress: () => context.pop(),
                                              child: const Text('Close'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
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
                                    ...(rows?.data ?? []).map(
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
                                    onPress: () {
                                      context.pushNamed(
                                        FeatureAppRouteName.appCctvCompany.name,
                                        pathParameters: {
                                          "companyId": "${row.id}",
                                        },
                                        extra: row,
                                      );
                                    },
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
                            onPress: () => context.pushNamed(
                              FeatureAppRouteName.appCctvPersonTabEKtp.name,
                            ),
                          ),
                          FTile(
                            prefix: Icon(FIcons.circleDot),
                            suffix: Icon(FIcons.save),
                            title: Text("Save Image"),
                            onPress: () async {
                              final hasAccess = await Gal.hasAccess(
                                toAlbum: true,
                              );

                              if (!hasAccess) {
                                showFDialog(
                                  context: context,
                                  builder: (context, style, animation) =>
                                      FDialog(
                                        animation: animation,
                                        direction: Axis.horizontal,
                                        title: const Text('Info'),
                                        body: const Text('Permission denied'),
                                        actions: [
                                          FButton(
                                            onPress: () => context.pop(),
                                            child: const Text('Close'),
                                          ),
                                        ],
                                      ),
                                );

                                showFToast(
                                  context: context,
                                  alignment: FToastAlignment.bottomCenter,
                                  title: const Text('Photo saved'),
                                );
                              }

                              // await Gal.requestAccess(toAlbum: true);

                              if (res?.data?.photo != null) {
                                final cleaned = res?.data?.photo
                                    ?.split(',')
                                    .last;

                                final bytes = base64Decode(cleaned!);

                                await Gal.putImageBytes(
                                  bytes,
                                  name: "${res!.data!.id}.jpg",
                                );
                              } else {
                                showFToast(
                                  context: context,
                                  alignment: FToastAlignment.bottomCenter,
                                  title: const Text('No photo found'),
                                );
                              }
                            },
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
        // loading: () => Center(child: FProgress.circularIcon()),
        loading: () => AppCctvPersonSkeletonizer(),
      ),
    );
  }
}
