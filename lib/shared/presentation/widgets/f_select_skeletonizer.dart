import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FSelectSkeletonizer extends StatefulWidget {
  const FSelectSkeletonizer({super.key});

  @override
  State<FSelectSkeletonizer> createState() => _FSelectSkeletonizerState();
}

class _FSelectSkeletonizerState extends State<FSelectSkeletonizer> {
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Lorem ipsum dolor"),
          Gap(3),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: Color(0xffd3dae2), width: 1),
              ),
              clipBehavior: Clip.antiAlias,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Loading state...",
                    style: TextStyle(color: Color(0xff4c4c4c)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
