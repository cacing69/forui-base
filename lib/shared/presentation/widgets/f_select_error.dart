import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class FSelectError extends StatelessWidget {
  final String label;
  final bool showDesc;
  final Object error;

  const FSelectError({
    super.key,
    required this.label,
    this.showDesc = false,
    this.error = const Object(),
  });

  @override
  Widget build(BuildContext context) {
    return FTextField(
      readOnly: true,
      enabled: false,
      // TODO : change to dynamic message
      error: Text("Error description"),
      label: Text(
        label,
        style: TextStyle(color: context.theme.colors.destructive),
      ),
    );
  }
}
