import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/map_theme_data.dart';
import 'package:forui_base/core/constant/shared_pref_key.dart';
import 'package:forui_base/core/constant/static_string.dart';
import 'package:forui_base/core/constant/user_static.dart';
import 'package:forui_base/core/utils/helpers.dart';
import 'package:forui_base/core/utils/string_extensions.dart';
import 'package:forui_base/features/profile/presentation/widgets/profile_social_link_widget.dart';
import 'package:forui_base/l10n/app_localizations.dart';
import 'package:forui_base/router.dart';
import 'package:forui_base/shared/presentation/providers/config_app_notifier.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

enum AvailableLocaleApp { id, en, es }

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    final localeItem = {
      loc.localeIndonesian: AvailableLocaleApp.id,
      loc.localeEnglish: AvailableLocaleApp.en,
      loc.localeSpanish: AvailableLocaleApp.es,
    };

    final themes = {
      AvailableThemeApp.zinc.name.capitalizeFirst(): AvailableThemeApp.zinc,
      AvailableThemeApp.slate.name.capitalizeFirst(): AvailableThemeApp.slate,
      AvailableThemeApp.red.name.capitalizeFirst(): AvailableThemeApp.red,
      AvailableThemeApp.rose.name.capitalizeFirst(): AvailableThemeApp.rose,
      AvailableThemeApp.orange.name.capitalizeFirst(): AvailableThemeApp.orange,
      AvailableThemeApp.green.name.capitalizeFirst(): AvailableThemeApp.green,
      AvailableThemeApp.blue.name.capitalizeFirst(): AvailableThemeApp.blue,
      AvailableThemeApp.yellow.name.capitalizeFirst(): AvailableThemeApp.yellow,
      AvailableThemeApp.violet.name.capitalizeFirst(): AvailableThemeApp.violet,
    };

    return FScaffold(
      header: FHeader(
        title: Text(loc.profile),
        suffixes: [
          FHeaderAction(
            icon: Icon(FIcons.logOut),
            onPress: () async {
              await Supabase.instance.client.auth.signOut();

              final prefs = await SharedPreferences.getInstance();

              prefs.setBool("isAuthenticated", false);
              if (context.mounted) {
                context.goNamed(RouteName.login.name);
              }
            },
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
                            title: Text(loc.previewAvatar),
                            onPress: () {
                              context.pushNamed(
                                RouteName.fullScreenImageUrlViewer.name,
                                queryParameters: {
                                  'imageUrl': userStatic.avatar,
                                },
                              );
                            },
                          ),
                          FItem(
                            prefix: const Icon(FIcons.upload),
                            title: Text(loc.uploadNewAvatar),
                            onPress: () => showFToast(
                              context: context,
                              icon: Icon(FIcons.info),
                              alignment: FToastAlignment.topCenter,
                              title: Text(loc.lorem),
                              description: Text(loc.loremIpsumDolorSitAmet),
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
                                  child: Text(loc.confirm),
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
              label: Text(loc.settings),
              description: Text(loc.personalizeYourExperience),
              children: [
                FSelectMenuTile.fromMap(
                  localeItem,
                  initialValue: AvailableLocaleApp.en,
                  autoHide: true,
                  prefix: const Icon(FIcons.languages),
                  title: Text(loc.language),
                  onChange: (e) async {
                    final selected = e.firstOrNull;
                    final prefs = await SharedPreferences.getInstance();

                    if (context.mounted) {
                      switch (selected) {
                        case null:
                          showForuiToast(
                            context: context,
                            title: Text(loc.empty),
                          );

                        case AvailableLocaleApp.id:
                          showForuiToast(
                            context: context,
                            title: Text(
                              loc.changedToLocaleMessage(loc.localeIndonesian),
                            ),
                          );

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeLocale(Locale(StaticString.id));

                          await prefs.setString(
                            SharedPrefKey.locale,
                            StaticString.id,
                          );
                        case AvailableLocaleApp.en:
                          showForuiToast(
                            context: context,
                            title: Text(
                              loc.changedToLocaleMessage(loc.localeEnglish),
                            ),
                          );

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeLocale(Locale(StaticString.en));

                          await prefs.setString(
                            SharedPrefKey.locale,
                            StaticString.en,
                          );

                        case AvailableLocaleApp.es:
                          showForuiToast(
                            context: context,
                            title: Text(
                              loc.changedToLocaleMessage(loc.localeSpanish),
                            ),
                          );

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeLocale(Locale(StaticString.es));

                          await prefs.setString(
                            SharedPrefKey.locale,
                            StaticString.es,
                          );
                      }
                    }
                  },
                  detailsBuilder: (_, values, _) =>
                      Text(switch (values.firstOrNull) {
                        AvailableLocaleApp.id => loc.localeIndonesian,
                        AvailableLocaleApp.en => loc.localeEnglish,
                        AvailableLocaleApp.es => loc.localeSpanish,
                        _ => loc.none,
                      }),
                ),
                FTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(loc.darkMode),
                      FSwitch(
                        style: (style) {
                          return style.copyWith(
                            childPadding: EdgeInsets.zero,
                            labelPadding: EdgeInsets.symmetric(horizontal: 8),
                          );
                        },
                        value:
                            ref.watch(configAppNotifierProvider).isDarkMode ??
                            false,
                        onChange: (value) async {
                          final prefs = await SharedPreferences.getInstance();

                          if (value) {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(
                                  mapThemeDataDark[ref
                                      .read(configAppNotifierProvider)
                                      .theme]!,
                                );
                          } else {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(
                                  mapThemeDataLight[ref
                                      .read(configAppNotifierProvider)
                                      .theme]!,
                                );
                          }

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeIsDarkMode(value);

                          await prefs.setBool(SharedPrefKey.isDarkMode, value);
                        },
                      ),
                    ],
                  ),
                  prefix: const Icon(FIcons.moon),
                  // details:
                ),
                FSelectMenuTile.fromMap(
                  themes,
                  initialValue: AvailableThemeApp.zinc,
                  autoHide: true,
                  prefix: const Icon(FIcons.palette),
                  title: Text("Theme"),
                  onChange: (e) async {
                    final selectedTheme = e.firstOrNull;
                    final prefs = await SharedPreferences.getInstance();
                    final isDarkMode =
                        prefs.getBool(SharedPrefKey.isDarkMode) ?? false;

                    if (context.mounted) {
                      switch (selectedTheme) {
                        case null:
                          showForuiToast(
                            context: context,
                            title: Text(loc.empty),
                          );

                        case AvailableThemeApp.zinc:
                          if (isDarkMode) {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.zinc.dark);
                          } else {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.zinc.light);
                          }

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeTheme("zinc");

                          prefs.setString(SharedPrefKey.theme, "zinc");
                          break;
                        case AvailableThemeApp.slate:
                          if (isDarkMode) {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.slate.dark);
                          } else {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.slate.light);
                          }

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeTheme("slate");
                          prefs.setString(SharedPrefKey.theme, "slate");
                          break;
                        case AvailableThemeApp.red:
                          if (isDarkMode) {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.red.dark);
                          } else {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.red.light);
                          }

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeTheme("red");
                          prefs.setString(SharedPrefKey.theme, "red");
                          break;
                        case AvailableThemeApp.rose:
                          if (isDarkMode) {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.rose.dark);
                          } else {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.rose.light);
                          }

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeTheme("rose");

                          prefs.setString(SharedPrefKey.theme, "rose");
                          break;
                        case AvailableThemeApp.orange:
                          if (isDarkMode) {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.orange.dark);
                          } else {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.orange.light);
                          }

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeTheme("orange");
                          prefs.setString(SharedPrefKey.theme, "orange");
                          break;
                        case AvailableThemeApp.green:
                          if (isDarkMode) {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.green.dark);
                          } else {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.green.light);
                          }

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeTheme("green");

                          prefs.setString(SharedPrefKey.theme, "green");
                          break;
                        case AvailableThemeApp.blue:
                          if (isDarkMode) {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.blue.dark);
                          } else {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.blue.light);
                          }

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeTheme("blue");

                          prefs.setString(SharedPrefKey.theme, "blue");
                          break;
                        case AvailableThemeApp.yellow:
                          if (isDarkMode) {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.yellow.dark);
                          } else {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.yellow.light);
                          }

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeTheme("yellow");

                          prefs.setString(SharedPrefKey.theme, "yellow");
                          break;
                        case AvailableThemeApp.violet:
                          if (isDarkMode) {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.violet.dark);
                          } else {
                            ref
                                .read(configAppNotifierProvider.notifier)
                                .changeThemeData(FThemes.violet.light);
                          }

                          ref
                              .read(configAppNotifierProvider.notifier)
                              .changeTheme("violet");

                          prefs.setString(SharedPrefKey.theme, "violet");
                          break;
                      }
                    }
                  },
                  detailsBuilder: (_, values, _) =>
                      Text(switch (values.firstOrNull) {
                        AvailableThemeApp.zinc =>
                          AvailableThemeApp.zinc.name.capitalizeFirst(),
                        AvailableThemeApp.slate =>
                          AvailableThemeApp.slate.name.capitalizeFirst(),
                        AvailableThemeApp.red =>
                          AvailableThemeApp.red.name.capitalizeFirst(),
                        AvailableThemeApp.rose =>
                          AvailableThemeApp.rose.name.capitalizeFirst(),
                        AvailableThemeApp.orange =>
                          AvailableThemeApp.orange.name.capitalizeFirst(),
                        AvailableThemeApp.green =>
                          AvailableThemeApp.green.name.capitalizeFirst(),
                        AvailableThemeApp.blue =>
                          AvailableThemeApp.blue.name.capitalizeFirst(),
                        AvailableThemeApp.yellow =>
                          AvailableThemeApp.yellow.name.capitalizeFirst(),
                        AvailableThemeApp.violet =>
                          AvailableThemeApp.violet.name.capitalizeFirst(),
                        _ => loc.none,
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
