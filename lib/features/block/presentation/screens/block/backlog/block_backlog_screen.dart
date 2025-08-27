import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/backlog_static.dart';
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
            FTabs(
              children: [
                FTabEntry(
                  label: Icon(FIcons.layoutList),
                  child: FItemGroup(
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
                ),
                FTabEntry(
                  label: Icon(FIcons.listChecks),
                  child: FItemGroup(
                    divider: FItemDivider.indented,
                    children: [
                      ...doneBacklogsStatic.map(
                        (e) => FItem(
                          prefix: Icon(e.icon),
                          title: Text(e.title!),
                          subtitle: Text(e.subtitle ?? ""),
                          suffix: Icon(FIcons.gitPullRequestArrow),
                          // onPress: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                FTabEntry(
                  label: Icon(FIcons.view),
                  child: FItemGroup(
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
                ),
                FTabEntry(
                  label: Icon(FIcons.boxes),
                  child: FItemGroup(
                    divider: FItemDivider.indented,
                    children: [
                      ...librariesBacklogsStatic.map(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
