import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/user_static.dart';
import 'package:forui_base/shared/presentation/providers/config_app_notifier.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      resizeToAvoidBottomInset: false,
      header: FHeader(
        title: Text("Codebase"),
        suffixes: [
          FHeaderAction(
            icon:
                ref.watch(configAppNotifierProvider).themeData ==
                    FThemes.zinc.light
                ? Icon(FIcons.moon)
                : Icon(FIcons.sun),
            onPress: () {
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
          FHeaderAction(
            icon: Icon(FIcons.menu),
            onPress: () {
              showFSheet(
                context: context,
                mainAxisMaxRatio: null,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                  maxHeight: double.infinity,
                ),
                side: FLayout.ltr,
                builder: (context) => Container(
                  decoration: BoxDecoration(
                    color: context.theme.colors.background,
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Gap(20),
                                      // CircleAvatar(
                                      //   radius: 25, // ukuran lingkaran
                                      //   backgroundColor:
                                      //       Colors.blue, // warna latar
                                      //   backgroundImage: CachedNetworkImageProvider(
                                      //     "https://avatars.githubusercontent.com/u/36250619?v=4",
                                      //   ),
                                      // ),
                                      SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                context.theme.colors.foreground,
                                          ),
                                          clipBehavior: Clip.antiAlias,
                                          child: CachedNetworkImage(
                                            imageUrl: userStatic.avatar!,
                                            placeholder: (context, url) =>
                                                const Center(
                                                  child: Skeletonizer.zone(
                                                    child: Bone.circle(
                                                      size: 70,
                                                    ),
                                                  ),
                                                ),
                                            errorWidget:
                                                (context, url, error) => Icon(
                                                  FIcons.info,
                                                  color: context
                                                      .theme
                                                      .colors
                                                      .background,
                                                ),
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Gap(20),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${userStatic.firstName!} ${userStatic.lastName!}"
                                                .trim(),
                                            style: context.theme.typography.lg
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            "@cacing69",
                                            style: context.theme.typography.sm,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                FDivider(),
                                FSidebarGroup(
                                  label: const Text('Github'),
                                  children: [
                                    FSidebarItem(
                                      icon: const Icon(FIcons.bookOpen),
                                      label: const Text('Overview'),
                                      onPress: () {},
                                    ),
                                    FSidebarItem(
                                      icon: const Icon(FIcons.folderGit2),
                                      label: const Text('Repositories'),
                                      initiallyExpanded: false,
                                      onPress: () {},
                                      children: [
                                        FSidebarItem(
                                          icon: const Icon(FIcons.code),
                                          label: const Text('logam-mulia-api'),
                                          onPress: () {},
                                        ),
                                        FSidebarItem(
                                          icon: const Icon(FIcons.code),
                                          label: const Text('koa-rest'),
                                          onPress: () {},
                                        ),
                                        FSidebarItem(
                                          icon: const Icon(FIcons.code),
                                          label: const Text('koa-graphql'),
                                          onPress: () {},
                                        ),
                                      ],
                                    ),
                                    FSidebarItem(
                                      icon: const Icon(FIcons.star),
                                      label: const Text('Stars'),
                                      onPress: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          FButton(
                            style: FButtonStyle.outline(),
                            onPress: () {},
                            prefix: Icon(FIcons.logOut),
                            child: Text("Logout"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: SvgPicture.asset(
                  "assets/icons/forui-light.svg",
                  colorFilter: ColorFilter.mode(
                    context.theme.colors.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            Gap(10),
            RichText(
              text: TextSpan(
                style: context.theme.typography.base.copyWith(
                  color: context.theme.colors.foreground,
                ),
                children: [
                  TextSpan(
                    text:
                        "Forui is a UI library for Flutter that provides a set of minimalistic widgets heavily inspired by shadcn/ui.",
                  ),
                ],
              ),
            ),
            Gap(10),
            FDivider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "General Dependencies",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Gap(5),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('forui'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('flutter_hooks'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('gap'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('cached_network_image'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('freezed_annotation'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('json_annotation'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('flutter_riverpod'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('dio'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('retrofit'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('flutter_svg'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('skeletonizer'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('equatable'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('latlong2'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.codesandbox,
                    color: context.theme.colors.primary,
                  ),
                  title: const Text('forui_hooks'),
                  suffix: Icon(FIcons.chevronRight),
                ),
              ],
            ),
            FDivider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Development Dependencies",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Gap(5),
                FItem(
                  prefix: Icon(
                    FIcons.bugPlay,
                    color: context.theme.colors.destructive,
                  ),
                  title: const Text('flutter_lints'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.bugPlay,
                    color: context.theme.colors.destructive,
                  ),
                  title: const Text('build_runner'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.bugPlay,
                    color: context.theme.colors.destructive,
                  ),
                  title: const Text('freezed'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.bugPlay,
                    color: context.theme.colors.destructive,
                  ),
                  title: const Text('json_serializable'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.bugPlay,
                    color: context.theme.colors.destructive,
                  ),
                  title: const Text('riverpod_lint'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.bugPlay,
                    color: context.theme.colors.destructive,
                  ),
                  title: const Text('custom_lint'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.bugPlay,
                    color: context.theme.colors.destructive,
                  ),
                  title: const Text('riverpod_generator'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.bugPlay,
                    color: context.theme.colors.destructive,
                  ),
                  title: const Text('pretty_dio_logger'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                FItem(
                  prefix: Icon(
                    FIcons.bugPlay,
                    color: context.theme.colors.destructive,
                  ),
                  title: const Text('retrofit_generator'),
                  suffix: Icon(FIcons.chevronRight),
                ),
                Gap(20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
