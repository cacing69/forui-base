import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/user_static.dart';
import 'package:forui_base/l10n/app_localizations.dart';

class ProfileSocialLinkWidget extends StatefulWidget {
  const ProfileSocialLinkWidget({super.key});

  @override
  State<ProfileSocialLinkWidget> createState() =>
      _ProfileSocialLinkWidgetState();
}

class _ProfileSocialLinkWidgetState extends State<ProfileSocialLinkWidget> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return FTileGroup(
      label: Text(loc.socialLinks),
      // description: const Text('Personalize your social links'),
      children: [
        FTile(
          prefix: Icon(FIcons.mail),
          title: Text(loc.email),
          details: Text(userStatic.email!),
          onPress: () {},
        ),
        FTile(
          prefix: Icon(FIcons.smartphone),
          title: Text(loc.phone),
          details: Text(userStatic.phone!),
          onPress: () {},
        ),
        FTile(
          prefix: Icon(FIcons.github),
          title: Text(loc.github),
          details: Text(userStatic.github!),
          onPress: () {},
        ),
        FTile(
          prefix: Icon(FIcons.linkedin),
          title: Text(loc.linkedin),
          details: Text(userStatic.linkedIn!),
          onPress: () {},
        ),
        FTile(
          prefix: Icon(FIcons.facebook),
          title: Text(loc.facebook),
          details: Text(userStatic.facebook!),
          onPress: () {},
        ),
      ],
    );
  }
}
