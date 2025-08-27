import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jiffy/jiffy.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AppCctvPersonSkeletonizer extends ConsumerStatefulWidget {
  const AppCctvPersonSkeletonizer({super.key});

  @override
  ConsumerState<AppCctvPersonSkeletonizer> createState() =>
      _AppCctvPersonSkeletonizerState();
}

enum Status { personalData, familyData }

class _AppCctvPersonSkeletonizerState
    extends ConsumerState<AppCctvPersonSkeletonizer> {
  final Jiffy now = Jiffy.now();

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      child: Skeletonizer(
        enabled: true,
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 180,
                width: 140,
                child: Builder(
                  builder: (context) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: const AssetImage("assets/images/avatar.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Gap(10),
            FBadge(child: Text("0000000000000000")),
            Text(
              "PERSON NAME",
              style: context.theme.typography.lg.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Gap(10),
            FTabs(
              children: [
                FTabEntry(
                  label: const Icon(FIcons.box),
                  child: FTileGroup(
                    label: const Text('Personal Data'),
                    children: [
                      FTile(
                        prefix: Icon(FIcons.box),
                        title: const Text('Family ID'),
                        details: Text("0000000000000000"),
                        suffix: Icon(FIcons.box),
                      ),
                      FTile(
                        prefix: Icon(FIcons.box),
                        title: const Text('Person ID'),
                        details: Text("0000000000000000"),
                        suffix: Icon(FIcons.box),
                      ),
                    ],
                  ),
                ),
                FTabEntry(
                  label: const Icon(FIcons.box),
                  child: SizedBox.shrink(),
                ),
                FTabEntry(
                  label: const Icon(FIcons.box),
                  child: SizedBox.shrink(),
                ),
                FTabEntry(
                  label: const Icon(FIcons.box),
                  child: SizedBox.shrink(),
                ),
                FTabEntry(
                  label: const Icon(FIcons.box),
                  child: SizedBox.shrink(),
                ),
                FTabEntry(
                  label: const Icon(FIcons.box),
                  child: SizedBox.shrink(),
                ),
                FTabEntry(
                  label: const Icon(FIcons.box),
                  child: SizedBox.shrink(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
