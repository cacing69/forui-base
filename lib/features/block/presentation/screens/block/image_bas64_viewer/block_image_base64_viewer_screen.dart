import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/image_base64_static.dart';
import 'package:forui_base/router.dart';
import 'package:go_router/go_router.dart';

class BlockImageBase64ViewerScreen extends StatefulWidget {
  const BlockImageBase64ViewerScreen({super.key});

  @override
  State<BlockImageBase64ViewerScreen> createState() =>
      _BlockImageBase64ViewerScreenState();
}

class _BlockImageBase64ViewerScreenState
    extends State<BlockImageBase64ViewerScreen> {
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
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: [
          ...imageBase64Static.map(
            (e) => GestureDetector(
              onTap: () {
                context.pushNamed(
                  RouteName.fullScreenImageBase64Viewer.name,
                  queryParameters: {"base64": e},
                );
              },
              onLongPress: () {
                // TODO : show bottom sheet to save image in galery
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: MemoryImage(base64Decode(e)),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                clipBehavior: Clip.antiAlias,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
