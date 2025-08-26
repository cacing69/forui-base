import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AppCctvResidentTileSkeletonizer extends StatefulWidget {
  const AppCctvResidentTileSkeletonizer({super.key});

  @override
  State<AppCctvResidentTileSkeletonizer> createState() =>
      _AppCctvResidentTileSkeletonizerState();
}

class _AppCctvResidentTileSkeletonizerState
    extends State<AppCctvResidentTileSkeletonizer> {
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: FItem(
        prefix: Icon(FIcons.mars),
        suffix: Icon(FIcons.chevronRight),
        subtitle: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("(29yo) 23 Lorem 1000"),
            Text(
              "Irure culpa ut anim excepteur excepteur. Consectetur anim tempor dolore proident.",
            ),
          ],
        ),
        title: Text('Do et laborum magna labore.'),
      ),
    );
  }
}
