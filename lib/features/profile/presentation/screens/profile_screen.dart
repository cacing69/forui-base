import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/router.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader(
        title: Text("Profile"),
        suffixes: [
          FHeaderAction(
            icon: Icon(FIcons.logOut),
            onPress: () => context.goNamed(RouteName.login.name),
          ),
        ],
      ),
      child: Column(
        children: [
          FCard(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ibnul Mutaki",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                FPopoverMenu(
                  menuAnchor: Alignment.topRight,
                  childAnchor: Alignment.bottomRight,
                  menu: [
                    FItemGroup(
                      children: [
                        FItem(
                          prefix: const Icon(FIcons.eye),
                          title: const Text('Preview Avatar'),
                          onPress: () {
                            showDialog(
                              context: context,
                              builder: (_) => Dialog(
                                child: InteractiveViewer(
                                  child: Image.network(
                                    'https://avatars.githubusercontent.com/u/36250619?v=4',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        FItem(
                          prefix: const Icon(FIcons.upload),
                          title: const Text('Upload New Avatar'),
                          onPress: () => showFToast(
                            context: context,
                            icon: Icon(FIcons.info),
                            alignment: FToastAlignment.bottomCenter,
                            title: const Text('Lorem'),
                            description: const Text(
                              'Lorem ipsum dolor sit amet',
                            ),
                            suffixBuilder: (context, entry) => IntrinsicHeight(
                              child: FButton(
                                style: context.theme.buttonStyles.primary
                                    .copyWith(
                                      contentStyle: context
                                          .theme
                                          .buttonStyles
                                          .primary
                                          .contentStyle
                                          .copyWith(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 7.5,
                                            ),
                                            textStyle: FWidgetStateMap.all(
                                              context.theme.typography.xs
                                                  .copyWith(
                                                    color: context
                                                        .theme
                                                        .colors
                                                        .primaryForeground,
                                                  ),
                                            ),
                                          )
                                          .call,
                                    )
                                    .call,
                                onPress: entry.dismiss,
                                child: const Text('Confirm'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  builder: (context, controller, child) => GestureDetector(
                    onTap: () => controller.toggle(),
                    child: CircleAvatar(
                      radius: 35, // ukuran lingkaran
                      backgroundColor: Colors.blue, // warna latar
                      backgroundImage: CachedNetworkImageProvider(
                        "https://avatars.githubusercontent.com/u/36250619?v=4",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap.expand(10),
          FTileGroup(
            label: const Text('Social Links'),
            // description: const Text('Personalize your social links'),
            children: [
              FTile(
                prefix: Icon(FIcons.mail, color: Colors.amber.shade700),
                title: Text(
                  'Email',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                details: Text("ibnuul@gmail.com"),
                onPress: () {},
              ),
              FTile(
                prefix: Icon(FIcons.smartphone, color: Colors.green.shade700),
                title: Text(
                  'Phone',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                details: Text("+62 896 7216 5341"),
                onPress: () {},
              ),
              FTile(
                prefix: Icon(FIcons.github),
                title: Text(
                  'Github',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                details: Text("cacing69"),
                onPress: () {},
              ),
              FTile(
                prefix: Icon(FIcons.linkedin, color: Colors.blue.shade700),
                title: Text(
                  'Linkedin',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                details: Text("ibnul-mutaki"),
                onPress: () {},
              ),
              FTile(
                prefix: Icon(FIcons.facebook, color: Colors.blue.shade700),
                title: Text(
                  'Facebook',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                details: Text("ibnuul"),
                onPress: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
