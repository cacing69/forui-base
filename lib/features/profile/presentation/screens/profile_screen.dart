import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/user_static.dart';
import 'package:forui_base/router.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
      child: SingleChildScrollView(
        child: Column(
          children: [
            FCard(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${staticUser.firstName!} ${staticUser.lastName!}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          staticUser.bio!,
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
                              // showDialog(
                              //   context: context,
                              //   builder: (_) => Dialog(
                              //     child: InteractiveViewer(
                              //       child: Image.network(
                              //         'https://avatars.githubusercontent.com/u/36250619?v=4',
                              //         fit: BoxFit.contain,
                              //       ),
                              //     ),
                              //   ),
                              // );

                              context.pushNamed(
                                RouteName.fullScreenPhotoViewer.name,
                                queryParameters: {
                                  'imageUrl':
                                      'https://avatars.githubusercontent.com/u/36250619?v=4',
                                },
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
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                      child: SizedBox(
                        height: 70,
                        width: 70,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.theme.colors.foreground,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: CachedNetworkImage(
                            imageUrl: staticUser.avatar!,
                            placeholder: (context, url) => const Center(
                              child: Skeletonizer.zone(
                                child: Bone.circle(size: 70),
                              ),
                            ),
                            errorWidget: (context, url, error) => Icon(
                              FIcons.info,
                              color: context.theme.colors.background,
                            ),
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
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
            ),
          ],
        ),
      ),
    );
  }
}
