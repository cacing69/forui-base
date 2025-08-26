import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FSelectSkeletonizer extends StatelessWidget {
  final String label;
  final bool showDesc;

  const FSelectSkeletonizer({
    super.key,
    this.label = "Loading",
    this.showDesc = false,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: FTextField(
        readOnly: true,
        label: Text(label),
        description: showDesc
            ? Text("Choose a $label from the list")
            : SizedBox.shrink(),
      ),
    );
  }
}
