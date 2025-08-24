import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:forui/theme.dart';
import 'package:forui/widgets/scaffold.dart';

class FullScreenPhotoViewerScreen extends StatelessWidget {
  final String imageUrl;

  const FullScreenPhotoViewerScreen({super.key, required this.imageUrl});

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
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
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
              left: 16,
              child: IconButton(
                icon: Icon(Icons.close, color: context.theme.colors.foreground),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
