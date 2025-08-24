import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/block/presentation/screens/block/block_nominatim_search_notifier.dart';
import 'package:forui_base/shared/data/models/nominatim/search_response.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BlockNominatimSearchScreen extends StatefulHookConsumerWidget {
  const BlockNominatimSearchScreen({super.key});

  @override
  ConsumerState<BlockNominatimSearchScreen> createState() =>
      _BlockNominatimSearchScreenState();
}

class _BlockNominatimSearchScreenState
    extends ConsumerState<BlockNominatimSearchScreen> {
  final Debouncer _debouncer = Debouncer();
  final Duration _debounceDuration = const Duration(milliseconds: 500);

  SearchResponse? selectedData = SearchResponse();

  @override
  Widget build(BuildContext context) {
    final query = useState<String>('');

    final TextEditingController searchController = useTextEditingController();

    final FocusNode searchFocusNode = useFocusNode();

    final debouncedQuery = useDebounced(query, Duration(milliseconds: 500));
    useEffect(() {
      if (debouncedQuery != null && debouncedQuery.value.isNotEmpty) {
        ref
            .read(blockNominatimSearchNotifierProvider.notifier)
            .perform(debouncedQuery.value);
      }
      return null;
    }, [debouncedQuery]);

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
      child: Material(
        color: context.theme.colors.background,
        child: SingleChildScrollView(
          child: Column(
            children: [
              FAlert(
                title: const Text('Nominatim API'),
                subtitle: const Text(
                  'Open-source geocoding with OpenStreetMap data',
                ),
              ),
              // Gap(10),
              // FSelect<SearchResponse>.searchBuilder(
              //   label: const Text("Type to search location"),
              //   description: Text("Selected data will be shown here"),
              //   hint: 'Search location',
              //   format: (s) => s.name!,
              //   filter: (query) async {
              //     if (query.trim().isEmpty) return [];

              //     final completer = Completer<void>();

              //     _debouncer.debounce(
              //       duration: _debounceDuration,
              //       onDebounce: () async {
              //         debugPrint("Search location: $query");
              //         await ref
              //             .read(blockNominatimSearchNotifierProvider.notifier)
              //             .perform(query);
              //         // // }

              //         completer.complete();
              //       },
              //     );

              //     await completer.future;

              //     return ref
              //             .watch(blockNominatimSearchNotifierProvider)
              //             .value ??
              //         [];
              //   },
              //   onChange: (value) {
              //     setState(() {
              //       selectedData = value;
              //     });
              //   },
              //   contentBuilder: (context, _, rows) => [
              //     for (final row in rows)
              //       FSelectItem<SearchResponse>(
              //         title: Text(row.name!),
              //         subtitle: Text(row.displayName!),
              //         value: row,
              //       ),
              //   ],
              //   contentLoadingBuilder: (context, style) => Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Skeletonizer(
              //       child: Row(
              //         children: [
              //           Gap(10),
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 "Title loading",
              //                 style: context.theme.typography.base.copyWith(
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //               Text(
              //                 "Lorem ipsum dolor sit amet",
              //                 softWrap: true,
              //                 style: context.theme.typography.sm,
              //               ),
              //               Gap(10),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              //   contentErrorBuilder: (context, error, trace) {
              //     final style = context.theme.selectStyle.iconStyle;
              //     return Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Center(
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Icon(
              //               FIcons.messageCircleX,
              //               size: style.size,
              //               color: style.color,
              //             ),
              //             Gap(10),
              //             Text(
              //               "Empty result",
              //               style: TextStyle(
              //                 color: context.theme.colors.foreground,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     );
              //   },
              //   contentEmptyBuilder: (context, style) {
              //     final style = context.theme.selectStyle.iconStyle;
              //     return Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Center(
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Icon(
              //               FIcons.messageCircleWarning,
              //               size: style.size,
              //               color: style.color,
              //             ),
              //             Gap(10),
              //             Text(
              //               "Empty result",
              //               style: TextStyle(
              //                 color: context.theme.colors.foreground,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     );
              //   },
              // ),
              Gap(10),
              Autocomplete<SearchResponse>(
                textEditingController: searchController,
                focusNode: searchFocusNode,
                displayStringForOption: (value) => value.name!,
                optionsBuilder: (TextEditingValue query) async {
                  if (query.text.trim().isEmpty) {
                    return const Iterable<SearchResponse>.empty();
                  }

                  final completer = Completer<void>();

                  _debouncer.debounce(
                    duration: _debounceDuration,
                    onDebounce: () async {
                      debugPrint("Search location: $query");
                      await ref
                          .read(blockNominatimSearchNotifierProvider.notifier)
                          .perform(query.text);
                      // // }

                      completer.complete();
                    },
                  );

                  await completer.future;

                  return ref
                          .watch(blockNominatimSearchNotifierProvider)
                          .value ??
                      [];
                },
                fieldViewBuilder:
                    (context, controller, focusNode, onFieldSubmitted) {
                      return FTextField(
                        label: Text("Type to search location"),
                        controller: controller,
                        description: Builder(
                          builder: (context) {
                            if ((ref
                                        .watch(
                                          blockNominatimSearchNotifierProvider,
                                        )
                                        .value
                                        ?.isEmpty ??
                                    true &&
                                        searchFocusNode.hasFocus &&
                                        searchController.text.isEmpty) &&
                                !ref
                                    .watch(blockNominatimSearchNotifierProvider)
                                    .isLoading) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Skeleton.keep(
                                  //   child: Text(
                                  //     "Selected data will shown below",
                                  //   ),
                                  // ),
                                  Gap(5),
                                  Material(
                                    elevation: 0, // hilangkan shadow
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: context.theme.colors.foreground,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      children: [
                                        FItem(
                                          title: Text("Empty result"),
                                          subtitle: Text(
                                            "No locations match your search",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }
                            return SizedBox.shrink();
                          },
                        ),
                        clearable: (e) => e.text.isNotEmpty,
                        focusNode: focusNode,
                        onSubmit: (value) => onFieldSubmitted,
                        hint: "ex: Pontianak, Indonesia",
                      );
                    },
                onSelected: (value) {
                  setState(() {
                    selectedData = value;
                  });
                },

                optionsViewBuilder: (context, onSelected, options) {
                  debugPrint("options: ${options.length}");
                  return Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Gap(5),
                        Material(
                          elevation: 0, // hilangkan shadow
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: context.theme.colors.foreground,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxHeight: 450),
                            child: ref
                                .watch(blockNominatimSearchNotifierProvider)
                                .when(
                                  data: (rows) => ListView.builder(
                                    shrinkWrap: true,
                                    padding: EdgeInsets.zero,
                                    itemCount: options.length,
                                    itemBuilder: (context, index) {
                                      final option = options.elementAt(index);
                                      return FItem(
                                        title: Text(option.name!),
                                        subtitle: Text(option.displayName!),
                                        onPress: () => onSelected(option),
                                      );
                                    },
                                  ),
                                  error: (error, stackTrace) =>
                                      SizedBox.shrink(),
                                  loading: () => Skeletonizer(
                                    child: FItem(
                                      title: Text("Loading..."),
                                      subtitle: Text(
                                        "Fetching location data...",
                                      ),
                                    ),
                                  ),
                                ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              // Consumer(
              //   builder: (context, ref, _) {
              //     final state = ref.watch(blockNominatimSearchNotifierProvider);
              //     return state.when(
              //       data: (rows) {
              //         if (rows!.isEmpty) {
              //           return Padding(
              //             padding: const EdgeInsets.only(top: 8),
              //             child: Text(
              //               "No results found",
              //               style: TextStyle(color: Colors.grey),
              //             ),
              //           );
              //         }
              //         return const SizedBox.shrink();
              //       },
              //       loading: () => Padding(
              //         padding: const EdgeInsets.only(top: 8),
              //         child: Text("Loading..."),
              //       ),
              //       error: (e, _) => SizedBox.shrink(),
              //     );
              //   },
              // ),
              Gap(10),
              FLabel(
                axis: Axis.vertical,
                label: const Text('Selected result'),
                description: const Text(
                  'The selected location data is retrieved from the Nominatim API',
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: FCard(
                        style: context.theme.cardStyle
                            .copyWith(
                              contentStyle: context.theme.cardStyle.contentStyle
                                  .copyWith(padding: EdgeInsets.all(2.75))
                                  .call,
                            )
                            .call,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(FIcons.mapPin, size: 20),
                                  Gap(10),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Name",
                                          style: context.theme.typography.base
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          selectedData?.name ?? "-",
                                          softWrap: true,
                                          style: context.theme.typography.sm,
                                        ),
                                        Gap(10),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              FDivider(
                                style: (e) =>
                                    e.copyWith(padding: EdgeInsets.all(5)),
                              ),

                              Row(
                                children: [
                                  Icon(FIcons.mapPin, size: 20),
                                  Gap(10),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          selectedData?.name ?? "Address",
                                          style: context.theme.typography.base
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          selectedData?.displayName ?? "-",
                                          softWrap: true,
                                          style: context.theme.typography.sm,
                                        ),
                                        Gap(10),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              FDivider(
                                style: (e) =>
                                    e.copyWith(padding: EdgeInsets.all(5)),
                              ),
                              Row(
                                children: [
                                  Icon(FIcons.locateFixed, size: 20),
                                  Gap(10),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Coordinate",
                                          style: context.theme.typography.base
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          "${selectedData?.lat ?? "-"}, ${selectedData?.lon ?? "-"}",
                                          softWrap: true,
                                          style: context.theme.typography.sm,
                                        ),
                                        Gap(10),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              FDivider(
                                style: (e) =>
                                    e.copyWith(padding: EdgeInsets.all(5)),
                              ),
                              Row(
                                children: [
                                  Icon(FIcons.copyright, size: 20),
                                  Gap(10),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "License",
                                          style: context.theme.typography.base
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          selectedData?.licence ?? "-",
                                          softWrap: true,
                                          style: context.theme.typography.sm,
                                        ),
                                        Gap(10),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
