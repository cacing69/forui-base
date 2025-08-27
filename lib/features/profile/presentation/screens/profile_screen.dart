import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/user_static.dart';
import 'package:forui_base/features/profile/presentation/widgets/profile_social_link_widget.dart';
import 'package:forui_base/router.dart';
import 'package:forui_base/shared/presentation/providers/config_app_notifier.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

enum LocaleApp { id, en }

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  // bool darkMode = true;

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
        physics: AlwaysScrollableScrollPhysics(),
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
                          "${userStatic.firstName!} ${userStatic.lastName!}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          userStatic.bio!,
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
                              context.pushNamed(
                                RouteName.fullScreenImageUrlViewer.name,
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
                            imageUrl: userStatic.avatar!,
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
            ProfileSocialLinkWidget(),
            FTileGroup(
              label: const Text('Settings'),
              description: const Text('Personalize your experience'),
              children: [
                FTile(
                  // prefix: Icon(FIcons.moon),
                  title: FSwitch(
                    style: (style) {
                      return style.copyWith(
                        childPadding: EdgeInsets.zero,
                        labelPadding: EdgeInsets.symmetric(horizontal: 8),
                      );
                    },
                    label: const Text('Dark Mode'),
                    semanticsLabel: 'Dark Mode',
                    value:
                        ref.watch(configAppNotifierProvider).themeData ==
                        FThemes.zinc.dark,
                    onChange: (value) {
                      if (ref.watch(configAppNotifierProvider).themeData ==
                          FThemes.zinc.light) {
                        ref
                            .read(configAppNotifierProvider.notifier)
                            .changeTheme(FThemes.zinc.dark);
                      } else {
                        ref
                            .read(configAppNotifierProvider.notifier)
                            .changeTheme(FThemes.zinc.light);
                      }
                    },
                  ),
                ),
                FSelectMenuTile.fromMap(
                  const {'Indonesia': LocaleApp.id, 'English': LocaleApp.en},
                  initialValue: LocaleApp.en,
                  autoHide: true,
                  prefix: const Icon(FIcons.bell),
                  title: const Text('Language'),
                  detailsBuilder: (_, values, _) =>
                      Text(switch (values.firstOrNull) {
                        LocaleApp.id => 'Indonesia',
                        LocaleApp.en => 'English',
                        _ => 'None',
                      }),
                ),
                FTile(
                  prefix: Icon(FIcons.code),
                  title: Text("Lorem"),
                  // suffix: Icon(FIcons.chevronRight),
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
