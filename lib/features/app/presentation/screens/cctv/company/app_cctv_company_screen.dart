import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AppCctvCompanyScreen extends StatelessWidget {
  final Company company;
  const AppCctvCompanyScreen({super.key, required this.company});

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
            FBadge(child: Text(company.id?.toString() ?? "-")),
            Gap(5),
            Text(
              company.name ?? "-",
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
                            title: Text(company.email ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.smartphone),
                            title: Text(company.phoneNumber ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.mapPinHouse),
                            title: Text(company.address ?? "-"),
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
                            subtitle: Text(null ?? "-"),
                          ),
                          FTile(
                            title: Text("Approval"),
                            subtitle: Text(null ?? "-"),
                          ),
                          FTile(
                            title: Text("WLKLP"),
                            subtitle: Text(null ?? "-"),
                          ),
                          FTile(
                            title: Text("NPWP"),
                            subtitle: Text(company.taxNumber ?? "-"),
                          ),

                          FTile(
                            title: Text("OSS"),
                            subtitle: Text(
                              company.onlineSingleSubmissionNumber ?? "-",
                            ),
                          ),
                          FTile(
                            title: Text("Export"),
                            subtitle: Text(null ?? "-"),
                          ),
                          FTile(
                            title: Text("Import"),
                            subtitle: Text(null ?? "-"),
                          ),
                          FTile(
                            title: Text("Business Actor Type"),
                            subtitle: Text(company.bussinessActorType ?? "-"),
                          ),
                          FTile(
                            title: Text("Company Type"),
                            subtitle: Text(company.companyTypeId ?? "-"),
                          ),
                          FTile(
                            title: Text("Business Scale"),
                            subtitle: Text(company.businessScale ?? "-"),
                          ),
                          FTile(
                            title: Text("Legal Body Status"),
                            subtitle: Text(company.legalBodyStatus ?? "-"),
                          ),
                          FTile(
                            title: Text("Submission Date"),
                            subtitle: Text(company.submissionDate ?? "-"),
                          ),
                          FTile(
                            title: Text("Issue Date"),
                            subtitle: Text(company.issueDate ?? "-"),
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
                      FTileGroup(
                        label: const Text('Capital'),
                        children: [
                          FTile(
                            prefix: Icon(FIcons.atSign),
                            title: Text(company.email ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.smartphone),
                            title: Text(company.phoneNumber ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.mapPinHouse),
                            title: Text(company.address ?? "-"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                FTabEntry(
                  label: Icon(FIcons.blocks),
                  child: Column(
                    children: [
                      FTileGroup(
                        label: const Text('Shareholder'),
                        children: [
                          FTile(
                            prefix: Icon(FIcons.atSign),
                            title: Text(company.email ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.smartphone),
                            title: Text(company.phoneNumber ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.mapPinHouse),
                            title: Text(company.address ?? "-"),
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
                        children: [
                          FTile(
                            prefix: Icon(FIcons.atSign),
                            title: Text(company.email ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.smartphone),
                            title: Text(company.phoneNumber ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.mapPinHouse),
                            title: Text(company.address ?? "-"),
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
                        label: const Text('Project'),
                        children: [
                          // if(company.projects != null && company.projects!.isNotEmpty){

                          // } else {

                          // }
                          FTile(
                            prefix: Icon(FIcons.atSign),
                            title: Text(company.email ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.smartphone),
                            title: Text(company.phoneNumber ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.mapPinHouse),
                            title: Text(company.address ?? "-"),
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
                        children: [
                          FTile(
                            prefix: Icon(FIcons.atSign),
                            title: Text(company.email ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.smartphone),
                            title: Text(company.phoneNumber ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.mapPinHouse),
                            title: Text(company.address ?? "-"),
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
                        children: [
                          FTile(
                            prefix: Icon(FIcons.atSign),
                            title: Text(company.email ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.smartphone),
                            title: Text(company.phoneNumber ?? "-"),
                          ),
                          FTile(
                            prefix: Icon(FIcons.mapPinHouse),
                            title: Text(company.address ?? "-"),
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
