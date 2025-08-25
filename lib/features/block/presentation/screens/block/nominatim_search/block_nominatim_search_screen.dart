import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/block/presentation/screens/block/nominatim_search/block_nominatim_search_notifier.dart';
import 'package:forui_base/shared/data/models/nominatim/search_response.dart';
import 'package:forui_base/shared/presentation/widgets/c_autocomplete.dart';
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
    // final query = useState<String>('');

    final TextEditingController searchController = useTextEditingController();

    final FocusNode searchFocusNode = useFocusNode();

    // final debouncedQuery = useDebounced(query, Duration(milliseconds: 500));

    // useEffect(() {
    //   if (debouncedQuery != null && debouncedQuery.value.isNotEmpty) {
    //     ref
    //         .read(blockNominatimSearchNotifierProvider.notifier)
    //         .perform(debouncedQuery.value);
    //   }
    //   return null;
    // }, [debouncedQuery]);

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
      child: SingleChildScrollView(
        child: Column(
          children: [
            FAlert(
              title: const Text('Nominatim API'),
              subtitle: const Text(
                'Open-source geocoding with OpenStreetMap data',
              ),
            ),
            Gap(10),

            // Autocomplete<SearchResponse>(
            //   textEditingController: searchController,
            //   focusNode: searchFocusNode,
            //   displayStringForOption: (value) => value.name!,
            //   optionsBuilder: (TextEditingValue query) async {
            //     if (query.text.trim().isEmpty) {
            //       return const Iterable<SearchResponse>.empty();
            //     }

            //     final completer = Completer<void>();

            //     _debouncer.debounce(
            //       duration: _debounceDuration,
            //       onDebounce: () async {
            //         debugPrint("Search location: $query");
            //         await ref
            //             .read(blockNominatimSearchNotifierProvider.notifier)
            //             .perform(query.text);
            //         // // }

            //         completer.complete();
            //       },
            //     );

            //     await completer.future;

            //     return ref.watch(blockNominatimSearchNotifierProvider).value ??
            //         [];
            //   },
            //   fieldViewBuilder:
            //       (context, controller, focusNode, onFieldSubmitted) {
            //         return FTextField(
            //           label: Text("Type to search location"),
            //           controller: controller,
            //           description: Builder(
            //             builder: (context) {
            //               if ((ref
            //                           .watch(
            //                             blockNominatimSearchNotifierProvider,
            //                           )
            //                           .value
            //                           ?.isEmpty ??
            //                       true &&
            //                           searchFocusNode.hasFocus &&
            //                           searchController.text.isEmpty) &&
            //                   !ref
            //                       .watch(blockNominatimSearchNotifierProvider)
            //                       .isLoading) {
            //                 return Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Skeleton.keep(
            //                       child: Text("Tap a result to select it."),
            //                     ),
            //                     Gap(5),
            //                     Material(
            //                       elevation: 0, // hilangkan shadow
            //                       shape: RoundedRectangleBorder(
            //                         side: BorderSide(
            //                           color: context.theme.colors.foreground,
            //                           width: 1,
            //                         ),
            //                         borderRadius: BorderRadius.circular(8),
            //                       ),
            //                       child: Column(
            //                         children: [
            //                           FItem(
            //                             title: Text("Empty result"),
            //                             subtitle: Text(
            //                               "No locations match your search",
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 );
            //               }
            //               return Text("Tap a result to select it.");
            //             },
            //           ),
            //           focusNode: focusNode,
            //           onSubmit: (value) => onFieldSubmitted,
            //           hint: "ex: Pontianak, Indonesia",
            //         );
            //       },
            //   onSelected: (value) {
            //     setState(() {
            //       selectedData = value;
            //     });
            //   },

            //   optionsViewBuilder: (context, onSelected, options) {
            //     debugPrint("options: ${options.length}");
            //     return Align(
            //       alignment: Alignment.topLeft,
            //       child: Column(
            //         children: [
            //           Gap(5),
            //           Material(
            //             elevation: 0, // hilangkan shadow
            //             shape: RoundedRectangleBorder(
            //               side: BorderSide(
            //                 color: context.theme.colors.foreground,
            //                 width: 1,
            //               ),
            //               borderRadius: BorderRadius.circular(8),
            //             ),
            //             child: ConstrainedBox(
            //               constraints: const BoxConstraints(maxHeight: 450),
            //               child: ref
            //                   .watch(blockNominatimSearchNotifierProvider)
            //                   .when(
            //                     data: (rows) => ListView.builder(
            //                       shrinkWrap: true,
            //                       padding: EdgeInsets.zero,
            //                       itemCount: options.length,
            //                       itemBuilder: (context, index) {
            //                         final option = options.elementAt(index);
            //                         return FItem(
            //                           title: Text(option.name!),
            //                           subtitle: Text(option.displayName!),
            //                           onPress: () => onSelected(option),
            //                         );
            //                       },
            //                     ),
            //                     error: (error, stackTrace) => SizedBox.shrink(),
            //                     loading: () => Skeletonizer(
            //                       child: FItem(
            //                         title: Text("Loading..."),
            //                         subtitle: Text("Fetching location data..."),
            //                       ),
            //                     ),
            //                   ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     );
            //   },
            // ),

            // TODO : waiting FAutocomplete generic patch
            CAutocomplete<SearchResponse>(
              textEditingController: searchController,
              focusNode: searchFocusNode,
              isLoading: ref
                  .watch(blockNominatimSearchNotifierProvider)
                  .isLoading,
              onSelected: (data) {
                debugPrint("onSelected:$data");
                setState(() {
                  selectedData = data;
                });
              },
              displayStringForOption: (e) => e.name!,
              label: Text("Cari Lokasi"),
              hintText: "ex: Pontianak, Indonesia",
              optionsBuilder: (query) async {
                if (query.text.trim().isEmpty) {
                  return const Iterable.empty();
                }

                final completer = Completer<void>();

                _debouncer.debounce(
                  duration: _debounceDuration,
                  onDebounce: () async {
                    await ref
                        .read(blockNominatimSearchNotifierProvider.notifier)
                        .perform(query.text);
                    completer.complete();
                  },
                );

                await completer.future;

                return ref.watch(blockNominatimSearchNotifierProvider).value ??
                    [];
              },
              optionItemBuilder: (context, option, onSelected) {
                return FItem(
                  title: Text(option.name!),
                  subtitle: Text(option.displayName!),
                  onPress: () => onSelected(option),
                );
              },
              emptyResultBuilder: (context) {
                return FItem(
                  title: Text("Empty result"),
                  subtitle: Text("No locations match your search"),
                );
              },

              loadingBuilder: (context) {
                return Skeletonizer(
                  child: FItem(
                    title: Text("Loading..."),
                    subtitle: Text("Fetching location data..."),
                  ),
                );
              },
            ),
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
    );
  }
}
