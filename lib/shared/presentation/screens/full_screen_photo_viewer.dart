import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:forui/widgets/scaffold.dart';

class FullScreenPhotoViewer extends StatelessWidget {
  final String imageUrl;

  const FullScreenPhotoViewer({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      childPad: false,
      child: SafeArea(
        child: Stack(
          children: [
            Center(
              child: InteractiveViewer(
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
