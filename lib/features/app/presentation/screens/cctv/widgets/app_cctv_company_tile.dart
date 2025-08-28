import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';

class AppCctvCompanyTile extends StatefulWidget {
  final Company company;
  final VoidCallback? onPress;

  const AppCctvCompanyTile({super.key, required this.company, this.onPress});

  @override
  State<AppCctvCompanyTile> createState() => _AppCctvCompanyTileState();
}

class _AppCctvCompanyTileState extends State<AppCctvCompanyTile> {
  @override
  Widget build(BuildContext context) {
    return FItem(
      prefix: Icon(FIcons.building2),
      suffix: Icon(FIcons.chevronRight),
      subtitle: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.company.id?.toString() ?? "-"),
          Text(widget.company.address?.toString() ?? "-"),
        ],
      ),
      title: Text(widget.company.name ?? ''),
      onPress: widget.onPress,
    );
  }
}
