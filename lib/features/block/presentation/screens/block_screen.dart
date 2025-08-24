import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/router.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class BlockScreen extends StatefulWidget {
  const BlockScreen({super.key});

  @override
  State<BlockScreen> createState() => _BlockScreenState();
}

class _BlockScreenState extends State<BlockScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader(
        title: Stack(
          children: [
            Row(
              children: [
                Text("Blocks"),
                Gap(15),
                Flexible(
                  child: FTextField(
                    hint: "Search Blocks...",
                    style: (e) => e.copyWith(
                      contentPadding: e.contentPadding.add(
                        EdgeInsetsGeometry.only(right: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 1,
              bottom: 1,
              child: FButton.raw(
                style: FButtonStyle.ghost(),
                onPress: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FIcons.search),
                ),
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          spacing: 10,
          children: [
            SizedBox(
              width: double.infinity,
              child: FCard(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: const Text(
                    'Location Picker',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                subtitle: const Text(
                  'Select a location on the map or search to pick your desired address.',
                ),
              ),
            ),
            FButton.raw(
              onPress: () {
                context.pushNamed(RouteName.blockNominatimSearch.name);
              },
              child: SizedBox(
                width: double.infinity,
                child: FCard(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: const Text(
                      'Nominatim Search',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  subtitle: const Text(
                    'Search for a location by entering a place name or address using Nominatim API.',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: FCard(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: const Text('Search', style: TextStyle(fontSize: 16)),
                ),
                subtitle: const Text(
                  'Select a list of item and use it on context/state.',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
