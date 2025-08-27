import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class ProfileSocialLinkWidget extends StatefulWidget {
  const ProfileSocialLinkWidget({super.key});

  @override
  State<ProfileSocialLinkWidget> createState() =>
      _ProfileSocialLinkWidgetState();
}

class _ProfileSocialLinkWidgetState extends State<ProfileSocialLinkWidget> {
  @override
  Widget build(BuildContext context) {
    return FTileGroup(
      label: const Text('Social Links'),
      // description: const Text('Personalize your social links'),
      children: [
        FTile(
          prefix: Icon(FIcons.mail),
          title: Text('Email'),
          details: Text("ibnuul@gmail.com"),
          onPress: () {},
        ),
        FTile(
          prefix: Icon(FIcons.smartphone),
          title: Text('Phone'),
          details: Text("+62 896 7216 5341"),
          onPress: () {},
        ),
        FTile(
          prefix: Icon(FIcons.github),
          title: Text('Github'),
          details: Text("cacing69"),
          onPress: () {},
        ),
        FTile(
          prefix: Icon(FIcons.linkedin),
          title: Text('Linkedin'),
          details: Text("ibnul-mutaki"),
          onPress: () {},
        ),
        FTile(
          prefix: Icon(FIcons.facebook),
          title: Text('Facebook'),
          details: Text("ibnuul"),
          onPress: () {},
        ),
      ],
    );
  }
}
