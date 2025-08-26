import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/block/presentation/screens/block/nominatim_search/block_nominatim_search_notifier.dart';
import 'package:forui_base/shared/data/models/nominatim/search_response.dart';
import 'package:forui_base/shared/domain/usecases/nominatim/reverse_latitude_longitude_usecase.dart';
import 'package:forui_base/shared/presentation/widgets/c_autocomplete.dart';
import 'package:forui_hooks/forui_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:url_launcher/url_launcher.dart';

class BlockLocationPickerScreen extends StatefulHookConsumerWidget {
  const BlockLocationPickerScreen({super.key});

  @override
  ConsumerState<BlockLocationPickerScreen> createState() =>
      _BlockLocationPickerScreenState();
}

class _BlockLocationPickerScreenState
    extends ConsumerState<BlockLocationPickerScreen>
    with TickerProviderStateMixin {
  final Debouncer _debouncer = Debouncer();
  final Duration _debounceDuration = const Duration(milliseconds: 500);

  LatLng center = LatLng(-6.182340, 106.842872);

  SearchResponse? selectedResponse = null;

  late final AnimatedMapController _animatedMapController;

  @override
  void initState() {
    super.initState();

    _animatedMapController = AnimatedMapController(
      vsync: this,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animatedMapController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = useTextEditingController();
    final FocusNode searchFocusNode = useFocusNode();
    final FAccordionController accordionController = useFAccordionController();

    return FScaffold(
      childPad: false,
      resizeToAvoidBottomInset: false,
      header: FHeader.nested(
        title: const Text('Block : Location Picker'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              context.pop();
            },
          ),
        ],
      ),
      child: Stack(
        children: [
          // Map Fullscreen
          FlutterMap(
            mapController: _animatedMapController.mapController,
            options: MapOptions(
              onTap: (tapLoc, position) {
                // debugLog('Tapped at: $tapLoc, position: $position');

                // setState(() {
                //   center = LatLng(position.latitude, position.longitude);
                // });

                _animatedMapController.animateTo(
                  dest: LatLng(position.latitude, position.longitude),
                  zoom: 18,
                );
              },
              onPositionChanged: (pos, hasGesture) async {
                debugPrint("hasGesture:$hasGesture");

                // reverse
                try {
                  // final completer = Completer<void>();
                  _debouncer.debounce(
                    duration: _debounceDuration,
                    onDebounce: () async {
                      // await ref
                      //     .read(blockNominatimSearchNotifierProvider.notifier)
                      //     .perform(query.text);
                      final result = await ref
                          .read(reverseLatitudeLongitudeUsecaseProvider)
                          .call(pos.center);

                      result.fold(
                        (failure) {
                          // state = AsyncValue.error(failure, StackTrace.current);
                        },
                        (data) {
                          setState(() {
                            selectedResponse = data;
                          });
                        },
                      );
                      // completer.complete();
                    },
                  );
                  // await completer.future;

                  // return ref
                  //         .watch(blockNominatimSearchNotifierProvider)
                  //         .value ??
                  //     [];
                } catch (e, stackTrace) {
                  // debaugLog(e);
                  debugPrint(e.toString());
                  debugPrintStack(stackTrace: stackTrace);
                }
              },
              interactionOptions: InteractionOptions(
                flags: InteractiveFlag.all,
              ),
              initialCenter: LatLng(-6.182340, 106.842872), // Jakarta,
              initialZoom: 18,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.cacing69.base.forui',
              ),
              RichAttributionWidget(
                showFlutterMapAttribution: false,
                attributions: [
                  TextSourceAttribution(
                    'OpenStreetMap contributors',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,

            child: Padding(
              padding: EdgeInsets.only(top: 35),
              child: Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.20),
                      blurRadius: 5,
                      spreadRadius: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.location_on,
              color: context.theme.colors.error,
              size: 50,
            ),
          ),

          // Search Bar Mengambang
          Positioned(
            top: 16,
            left: 16,
            right: 16,
            child: Material(
              // elevation: 4,
              clipBehavior: Clip.none,
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: CAutocomplete<SearchResponse>(
                  textEditingController: searchController,
                  focusNode: searchFocusNode,
                  isLoading: ref
                      .watch(blockNominatimSearchNotifierProvider)
                      .isLoading,
                  onSelected: (data) {
                    debugPrint("onSelected:$data");

                    SystemChannels.textInput.invokeMethod('TextInput.hide');

                    setState(() {
                      selectedResponse = data;
                    });

                    _animatedMapController.animateTo(
                      dest: LatLng(
                        double.tryParse(data.lat!)!,
                        double.tryParse(data.lon!)!,
                      ),
                      zoom: 18,
                    );
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

                    return ref
                            .watch(blockNominatimSearchNotifierProvider)
                            .value ??
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
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(12),
              color: context.theme.colors.background,
              child: Column(
                spacing: 10,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: FAccordion(
                      controller: accordionController,
                      children: [
                        FAccordionItem(
                          initiallyExpanded: true,
                          title: Text(
                            "Result : ${selectedResponse?.name ?? "-"}",
                          ),
                          child: Column(
                            spacing: 10,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(selectedResponse?.displayName ?? "-"),
                              selectedResponse != null
                                  ? Column(
                                      children: [
                                        FDivider(
                                          style: (style) => style.copyWith(
                                            padding: EdgeInsets.only(
                                              bottom: 10,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: Row(
                                              children: [
                                                Icon(FIcons.externalLink),
                                                Gap(10),
                                                Text(
                                                  "Open in Maps (${selectedResponse!.lat}, ${selectedResponse!.lon})",
                                                ),
                                              ],
                                            ),
                                          ),

                                          onTap: () async {
                                            final Uri url = Uri.parse(
                                              "https://www.google.com/maps?q=${selectedResponse?.lat ?? "-"},${selectedResponse?.lon ?? "-}"}",
                                            );

                                            if (!await launchUrl(
                                              url,
                                              mode: LaunchMode
                                                  .externalApplication,
                                            )) {
                                              throw Exception(
                                                'Cannot open URL: $url',
                                              );
                                            }
                                          },
                                        ),
                                      ],
                                    )
                                  : SizedBox.shrink(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      spacing: 10,
                      children: [
                        FButton(
                          style: FButtonStyle.outline(),
                          onPress: () {},
                          child: Icon(FIcons.locateFixed),
                        ),
                        Flexible(
                          child: FButton(
                            style: FButtonStyle.outline(),
                            onPress: () {
                              HapticFeedback.selectionClick();
                            },
                            prefix: Icon(FIcons.check),
                            child: Text("Select Location"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
