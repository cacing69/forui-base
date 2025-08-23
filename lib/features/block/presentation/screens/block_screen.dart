import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:gap/gap.dart';

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
                Flexible(child: const FTextField(hint: "Search Blocks...")),
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
