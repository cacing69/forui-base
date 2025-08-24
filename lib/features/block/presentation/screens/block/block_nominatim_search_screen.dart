import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/shared/data/models/nominatim/search_response.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class BlockNominatimSearchScreen extends ConsumerStatefulWidget {
  const BlockNominatimSearchScreen({super.key});

  @override
  ConsumerState<BlockNominatimSearchScreen> createState() =>
      _BlockNominatimSearchScreenState();
}

class _BlockNominatimSearchScreenState
    extends ConsumerState<BlockNominatimSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader.nested(
        title: const Text('Block : Nominatim Search'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              context.pop();
            },
          ),
        ],
      ),
      child: Column(
        children: [
          FSelect<SearchResponse>.searchBuilder(
            hint: 'Search location',
            format: (s) => s.name!,
            filter: (query) async {
              await Future.delayed(const Duration(seconds: 1));
              throw StateError('Error loading data');
            },
            contentBuilder: (context, _, rows) => [
              for (final row in rows)
                FSelectItem(title: Text(row.name!), value: row.displayName),
            ],
            contentLoadingBuilder: (context, style) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Searching locations...',
                style: style.textFieldStyle.contentTextStyle.maybeResolve({}),
              ),
            ),
            contentErrorBuilder: (context, error, trace) {
              final style = context.theme.selectStyle.iconStyle;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FIcons.messageCircleX,
                        size: style.size,
                        color: style.color,
                      ),
                      Gap(10),
                      Text(
                        "Empty result",
                        style: TextStyle(
                          color: context.theme.colors.foreground,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Gap(20),
          FLabel(
            axis: Axis.vertical,
            label: const Text('Selected result'),
            description: const Text(
              'The selected location data is retrieved from the Nominatim API',
            ),
            child: SizedBox(
              width: double.infinity,
              child: FCard(
                child: FItemGroup(
                  children: [
                    FItem(
                      prefix: Icon(FIcons.user),
                      title: const Text('Personalization'),
                      suffix: Icon(FIcons.chevronRight),
                      onPress: () {},
                    ),
                    FItem(
                      prefix: Icon(FIcons.wifi),
                      title: const Text('WiFi'),
                      details: const Text('Forus Labs (5G)'),
                      suffix: Icon(FIcons.chevronRight),
                      onPress: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
