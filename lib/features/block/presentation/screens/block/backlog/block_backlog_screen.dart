import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/backlog_static.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class BlockBacklogScreen extends StatefulWidget {
  const BlockBacklogScreen({super.key});

  @override
  State<BlockBacklogScreen> createState() => _BlockBacklogScreenState();
}

class _BlockBacklogScreenState extends State<BlockBacklogScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      resizeToAvoidBottomInset: false,
      header: FHeader.nested(
        title: const Text('Block : Backlog'),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Gap(15),
                Text(
                  "Need to Implement",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            FItemGroup(
              divider: FItemDivider.indented,
              children: [
                ...implementBacklogsStatic.map(
                  (e) => FItem(
                    prefix: Icon(e.icon),
                    title: Text(e.title!),
                    subtitle: Text(e.subtitle ?? ""),
                    suffix: (e.status ?? false)
                        ? Icon(FIcons.gitPullRequestArrow)
                        : Icon(FIcons.gitPullRequestDraft),
                    onPress: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Gap(15),
                Text(
                  "Need to Check",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            FItemGroup(
              divider: FItemDivider.indented,
              children: [
                ...checkBacklogsStatic.map(
                  (e) => FItem(
                    prefix: Icon(e.icon),
                    title: Text(e.title!),
                    subtitle: Text(e.subtitle!),
                    suffix: (e.status ?? false)
                        ? Icon(FIcons.gitPullRequestArrow)
                        : Icon(FIcons.gitPullRequestDraft),
                    onPress: () {},
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
