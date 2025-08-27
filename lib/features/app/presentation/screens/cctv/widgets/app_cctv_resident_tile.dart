import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:jiffy/jiffy.dart';

class AppCctvResidentTile extends StatefulWidget {
  final Resident resident;
  final Jiffy now;
  final VoidCallback? onPress;

  const AppCctvResidentTile({
    super.key,
    required this.resident,
    required this.now,
    this.onPress,
  });

  @override
  State<AppCctvResidentTile> createState() => _AppCctvResidentTileState();
}

class _AppCctvResidentTileState extends State<AppCctvResidentTile> {
  @override
  Widget build(BuildContext context) {
    return FItem(
      prefix: widget.resident.sexId == 0
          ? Icon(FIcons.venus)
          : Icon(FIcons.mars),
      suffix: Icon(FIcons.chevronRight),
      subtitle: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Builder(
            builder: (context) {
              final Jiffy dob = Jiffy.parse(widget.resident.dateOfBirth!);

              return Text(
                widget.resident.dateOfBirth != null
                    ? "(${widget.now.diff(dob, unit: Unit.year)}yo) ${dob.format(pattern: "d MMMM y")}"
                    : "-",
              );
            },
          ),
          Text(widget.resident.address?.toString() ?? "-"),
        ],
      ),
      title: Text(widget.resident.name ?? ''),
      onPress: widget?.onPress,
    );
  }
}
