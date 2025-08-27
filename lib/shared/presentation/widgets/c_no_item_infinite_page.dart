import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class CNoItemInfinitePage extends StatelessWidget {
  const CNoItemInfinitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Icon(FIcons.frown)],
      ),
    );
  }
}
