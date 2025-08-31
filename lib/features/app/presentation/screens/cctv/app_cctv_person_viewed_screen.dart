import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/app/presentation/screens/app_routes.dart';
import 'package:forui_base/shared/data/caches/api_cctv/person_string_cache.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/load_person_data_usecase_pack.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_ce/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppCctvPersonViewedScreen extends ConsumerWidget {
  const AppCctvPersonViewedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cache = ref.watch(personStringCacheRefProvider);

    return FutureBuilder<Box<String>>(
      future: cache.getBox(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: FProgress.circularIcon());
        }

        final box = snapshot.data!;

        // pakai StreamBuilder untuk listen ke perubahan box
        return StreamBuilder(
          stream: box.watch(), // <- ini kuncinya
          builder: (context, snapshot) {
            final entries = box.toMap().entries.toList();

            return FScaffold(
              header: FHeader.nested(
                title: const Text('CCTV : Viewed Person'),
                prefixes: [FHeaderAction.back(onPress: () => context.pop())],
                suffixes: [],
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (entries.isEmpty)
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(child: Text("No viewed person yet.")),
                      )
                    else
                      FItemGroup(
                        divider: FItemDivider.indented,
                        children: [
                          for (final e in entries.reversed)
                            FItem(
                              prefix: const Icon(FIcons.history),
                              title: Text(e.value),
                              subtitle: Text("${e.key}"),
                              onPress: () {
                                final personId = e.key;

                                ref
                                    .read(loadPersonDataUsecasePackProvider)
                                    .call(personId: personId);

                                context.pushNamed(
                                  FeatureAppRouteName.appCctvPerson.name,
                                  pathParameters: {
                                    "personId": personId,
                                    "loadFamily": "true",
                                  },
                                );
                              },
                            ),
                        ],
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
