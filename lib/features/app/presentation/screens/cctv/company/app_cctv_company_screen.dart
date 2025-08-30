import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/chart_colors.dart';
import 'package:forui_base/features/app/presentation/screens/app_routes.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/load_person_data_usecase_pack.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:fl_chart/fl_chart.dart';

class AppCctvCompanyScreen extends ConsumerStatefulWidget {
  final Company company;
  const AppCctvCompanyScreen({super.key, required this.company});

  @override
  ConsumerState<AppCctvCompanyScreen> createState() =>
      _AppCctvCompanyScreenState();
}

class _AppCctvCompanyScreenState extends ConsumerState<AppCctvCompanyScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader.nested(
        title: const Text('Company'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              context.pop();
            },
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            FBadge(child: Text(widget.company.id?.toString() ?? "-")),
            Gap(5),
            Text(
              widget.company.name ?? "-",
              style: context.theme.typography.lg.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Gap(15),
            FTabs(
              children: [
                FTabEntry(
                  label: const Icon(FIcons.building),
                  child: Column(
                    children: [
                      FTileGroup(
                        label: const Text('Profile'),
                        description: Column(
                          children: [
                            const Text('Company profile summary'),
                            Gap(20),
                          ],
                        ),
                        children: [
                          FTile(
                            prefix: Icon(FIcons.atSign),
                            title: Text(widget.company.email ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.smartphone),
                            title: Text(widget.company.phoneNumber ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.mapPinHouse),
                            title: Text(widget.company.address ?? "-"),
                          ),
                        ],
                      ),
                      FTileGroup(
                        label: const Text('Other Information'),
                        description: Column(
                          children: [
                            const Text('Other Data profile summary'),
                            Gap(20),
                          ],
                        ),
                        children: [
                          FTile(
                            title: Text("NPP"),
                            subtitle: Text(
                              widget.company.registrationNumber?.toString() ??
                                  "-",
                            ),
                          ),
                          FTile(
                            title: Text("Approval"),
                            subtitle: Text(
                              widget.company.approvalNumber ?? "-",
                            ),
                          ),
                          FTile(title: Text("WLKLP"), subtitle: Text("none")),
                          FTile(
                            title: Text("NPWP"),
                            subtitle: Text(widget.company.taxNumber ?? "-"),
                          ),

                          FTile(
                            title: Text("Online Single Submission Number"),
                            subtitle: Text(
                              widget.company.onlineSingleSubmissionNumber ??
                                  "-",
                            ),
                          ),
                          FTile(
                            title: Text("Export"),
                            subtitle: Text(widget.company.exportFlag ?? "-"),
                          ),
                          FTile(
                            title: Text("Import"),
                            subtitle: Text(widget.company.importFlag ?? "-"),
                          ),
                          FTile(
                            title: Text("Business Actor Type"),
                            subtitle: Text(
                              widget.company.bussinessActorType ?? "-",
                            ),
                          ),
                          FTile(
                            title: Text("Company Type"),
                            subtitle: Text(widget.company.companyTypeId ?? "-"),
                          ),
                          FTile(
                            title: Text("Business Scale"),
                            subtitle: Text(widget.company.businessScale ?? "-"),
                          ),
                          FTile(
                            title: Text("Legal Body Status"),
                            subtitle: Text(
                              widget.company.legalBodyStatus ?? "-",
                            ),
                          ),
                          FTile(
                            title: Text("Submission Date"),
                            subtitle: Text(
                              widget.company.submissionDate ?? "-",
                            ),
                          ),
                          FTile(
                            title: Text("Issue Date"),
                            subtitle: Text(widget.company.issueDate ?? "-"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                FTabEntry(
                  label: Icon(FIcons.dollarSign),
                  child: Column(
                    children: [
                      Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Legend 1
                          Row(
                            children: [
                              Container(
                                width: 14,
                                height: 14,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ChartColors.dark[0],
                                ),
                              ),
                              const SizedBox(width: 6),
                              // Text(
                              //   "Domestic (${calculatePercentage({"domestic": num.tryParse(widget.company.domesticCapitalAmount.toString()) ?? 0, "foreign": num.tryParse(widget.company.foreignCapitalAmount.toString()) ?? 0})["domestic"]})",
                              //   style: context.theme.typography.sm,
                              // ),
                              Text(
                                "Domestic (${widget.company.domesticCapitalPercentage})",
                                style: context.theme.typography.sm,
                              ),
                            ],
                          ),
                          const Gap(20),

                          // Legend 2
                          Row(
                            children: [
                              Container(
                                width: 14,
                                height: 14,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ChartColors.dark[1],
                                ),
                              ),
                              const SizedBox(width: 6),
                              Text(
                                "Foreign (${widget.company.foreignCapitalPercentage})",
                                style: context.theme.typography.sm,
                              ),
                            ],
                          ),
                        ],
                      ),
                      AspectRatio(
                        aspectRatio: 2.25,
                        child: PieChart(
                          PieChartData(
                            borderData: FlBorderData(show: false),
                            sectionsSpace: 2,
                            centerSpaceRadius: 40,

                            sections: [
                              PieChartSectionData(
                                value: double.tryParse(
                                  widget.company.domesticCapitalAmount
                                      .toString(),
                                ),
                                title:
                                    "${widget.company.domesticCapitalPercentage}%",
                                color: ChartColors.dark[0],
                                radius: 30,
                              ),
                              PieChartSectionData(
                                value: double.tryParse(
                                  widget.company.foreignCapitalAmount
                                      .toString(),
                                ),
                                title:
                                    "${widget.company.foreignCapitalPercentage}%",
                                color: ChartColors.dark[1],
                                radius: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      FTileGroup(
                        label: const Text('Capital'),
                        children: [
                          FTile(
                            title: Text("Domestic"),
                            subtitle: Text(
                              "(${widget.company.domesticCapitalPercentage}%)",
                            ),
                            suffix: Text(
                              NumberFormat.decimalPattern('id').format(
                                num.tryParse(
                                  "${widget.company.domesticCapitalAmount}",
                                ),
                              ),
                            ),
                          ),
                          FTile(
                            title: Text("Foreign"),
                            suffix: Text(
                              NumberFormat.decimalPattern('id').format(
                                num.tryParse(
                                  "${widget.company.foreignCapitalAmount}",
                                ),
                              ),
                            ),
                            subtitle: Text(
                              "(${widget.company.foreignCapitalPercentage}%)",
                            ),
                          ),
                          FTile(
                            title: Text("Total"),
                            suffix: Text(
                              NumberFormat.decimalPattern('id').format(
                                num.tryParse(
                                  widget.company.totalCapitalAmount.toString(),
                                ),
                              ),
                            ),
                          ),
                          FTile(
                            title: Text("Base Total"),
                            suffix: Text(
                              NumberFormat.decimalPattern('id').format(
                                num.tryParse(
                                  widget.company.baseCapitalTotal.toString(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                FTabEntry(
                  label: Icon(FIcons.heartHandshake),
                  child: Column(
                    children: [
                      FTileGroup(
                        label: const Text('Shareholder'),
                        children: (widget.company.pic ?? []).isNotEmpty
                            ? (widget.company.shareholders ?? [])
                                  .map(
                                    (shareholder) => FTile(
                                      prefix: Icon(FIcons.fileUser),
                                      title: Text(shareholder.name ?? "-"),
                                      suffix: Icon(FIcons.chevronRight),
                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(shareholder.id ?? "-"),
                                          Text(
                                            shareholder.capital?.toString() ??
                                                "-",
                                          ),
                                        ],
                                      ),
                                      onPress: () {
                                        final personId = shareholder.id
                                            .toString();

                                        ref
                                            .read(
                                              loadPersonDataUsecasePackProvider,
                                            )
                                            .call(personId: personId);

                                        context.pushNamed(
                                          FeatureAppRouteName
                                              .appCctvPerson
                                              .name,
                                          pathParameters: {
                                            "personId": personId,
                                            "loadFamily": "true",
                                          },
                                        );
                                      },
                                    ),
                                  )
                                  .toList()
                            : [
                                FTile(
                                  prefix: Icon(FIcons.info),
                                  title: Text("No shareholders available"),
                                ),
                              ],
                      ),
                    ],
                  ),
                ),
                FTabEntry(
                  label: Icon(FIcons.users),
                  child: Column(
                    children: [
                      FTileGroup(
                        label: const Text('PIC'),
                        children: (widget.company.pic ?? []).isNotEmpty
                            ? (widget.company.pic ?? [])
                                  .map(
                                    (pic) => FTile(
                                      prefix: Icon(FIcons.user),
                                      title: Text(pic.name ?? "-"),
                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(pic.id ?? "-"),
                                          Text(pic.position ?? "-"),
                                          Text(pic.email ?? "-"),
                                          Text(
                                            "Foreign (${pic.foreignFlag ?? "-"})",
                                          ),
                                        ],
                                      ),
                                      suffix: Icon(FIcons.chevronRight),
                                      onPress: () {
                                        final personId = pic.id.toString();

                                        ref
                                            .read(
                                              loadPersonDataUsecasePackProvider,
                                            )
                                            .call(personId: personId);

                                        context.pushNamed(
                                          FeatureAppRouteName
                                              .appCctvPerson
                                              .name,
                                          pathParameters: {
                                            "personId": personId,
                                            "sourceScreen": "company",
                                          },
                                        );
                                      },
                                    ),
                                  )
                                  .toList()
                            : [
                                FTile(
                                  prefix: Icon(FIcons.info),
                                  title: Text("No PIC available"),
                                ),
                              ],
                      ),
                    ],
                  ),
                ),
                FTabEntry(
                  label: Icon(FIcons.squareKanban),
                  child: Column(
                    children: [
                      FTileGroup(
                        label: const Text('Projects'),
                        children: (widget.company.projects ?? []).isNotEmpty
                            ? (widget.company.projects ?? [])
                                  .map(
                                    (project) => FTile(
                                      prefix: Icon(FIcons.squareDashedKanban),
                                      title: Text(project.id ?? "-"),
                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            NumberFormat.decimalPattern(
                                              'id',
                                            ).format(
                                              num.tryParse(
                                                "${project.investment}",
                                              ),
                                            ),
                                          ),
                                          Text(
                                            project.type ?? "-",
                                            maxLines: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList()
                            : [
                                FTile(
                                  prefix: Icon(FIcons.info),
                                  title: Text("No projects available"),
                                ),
                              ],
                      ),
                    ],
                  ),
                ),
                FTabEntry(
                  label: Icon(FIcons.scale),
                  child: Column(
                    children: [
                      FTileGroup(
                        label: const Text('Legality'),
                        children: (widget.company.legalities ?? []).isNotEmpty
                            ? (widget.company.legalities ?? [])
                                  .map(
                                    (legality) => FTile(
                                      prefix: Icon(FIcons.bookA),
                                      title: Text(legality.name ?? "-"),
                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(legality.type ?? "-"),
                                          Text(
                                            legality.address ?? "-",
                                            maxLines: 10,
                                          ),
                                          Text(legality.phone ?? "-"),
                                          Text(legality.date ?? "-"),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList()
                            : [
                                FTile(
                                  prefix: Icon(FIcons.info),
                                  title: Text("No legalities available"),
                                ),
                              ],
                      ),
                    ],
                  ),
                ),
                FTabEntry(
                  label: Icon(FIcons.listChecks),
                  child: Column(
                    children: [
                      FTileGroup(
                        label: const Text('Checklist'),
                        children: (widget.company.checklists ?? []).isNotEmpty
                            ? (widget.company.checklists ?? [])
                                  .map(
                                    (checklist) => FTile(
                                      prefix: Icon(FIcons.checkCheck),
                                      title: Text(
                                        checklist.permissionName ?? "-",
                                      ),
                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(checklist.id ?? "-"),
                                          Text(
                                            checklist.agency ?? "-",
                                            maxLines: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList()
                            : [
                                FTile(
                                  prefix: Icon(FIcons.info),
                                  title: Text("No checklists available"),
                                ),
                              ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
