import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:forui/assets.dart';
import 'package:forui/theme.dart';
import 'package:forui/widgets/button.dart';
import 'package:forui/widgets/scaffold.dart';
import 'package:go_router/go_router.dart';

class FullScreenImageBase64ViewerScreen extends StatelessWidget {
  final String base64;

  const FullScreenImageBase64ViewerScreen({super.key, required this.base64});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      childPad: false,
      child: SafeArea(
        child: Stack(
          children: [
            Center(
              child: InteractiveViewer(
                // Tambahkan boundary untuk memungkinkan zoom
                boundaryMargin: const EdgeInsets.all(20.0),
                minScale: 0.5,
                maxScale: 2.5,
                child: Image.memory(
                  base64Decode(base64),
                  // Ubah 'fit' agar dapat menutupi area yang dapat dilihat
                  fit: BoxFit.fitWidth,
                  // Gunakan 'width' dan 'height' agar bisa memenuhi layar
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: FButton(
                style: FButtonStyle.ghost(),
                onPress: () => context.pop(),
                child: Icon(FIcons.x, color: context.theme.colors.foreground),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
