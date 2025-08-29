import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/map_theme_data.dart';
import 'package:forui_base/core/utils/string_extensions.dart';
import 'package:go_router/go_router.dart';

class ThemeSwitcherScreen extends StatefulWidget {
  const ThemeSwitcherScreen({super.key});

  @override
  State<ThemeSwitcherScreen> createState() => _ThemeSwitcherScreenState();
}

class _ThemeSwitcherScreenState extends State<ThemeSwitcherScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader.nested(
        title: const Text('Theme Switcher'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              context.pop();
            },
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            FTileGroup(
              children: [
                FTile(
                  prefix: SizedBox(
                    height: 30,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: FThemes.zinc.light.colors.primary,
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: context.theme.colors.foreground,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  title: Text(AvailableThemeApp.zinc.name.capitalizeFirst()),
                ),
                FTile(
                  prefix: SizedBox(
                    height: 30,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: FThemes.slate.light.colors.primary,
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: context.theme.colors.foreground,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  title: Text(AvailableThemeApp.slate.name.capitalizeFirst()),
                ),
                FTile(
                  prefix: SizedBox(
                    height: 30,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: FThemes.red.light.colors.primary,
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: context.theme.colors.foreground,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  title: Text(AvailableThemeApp.red.name.capitalizeFirst()),
                ),
                FTile(
                  prefix: SizedBox(
                    height: 30,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: FThemes.rose.light.colors.primary,
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: context.theme.colors.foreground,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  title: Text(AvailableThemeApp.rose.name.capitalizeFirst()),
                ),
                FTile(
                  prefix: SizedBox(
                    height: 30,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: FThemes.orange.light.colors.primary,
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: context.theme.colors.foreground,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  title: Text(AvailableThemeApp.orange.name.capitalizeFirst()),
                ),
                FTile(
                  prefix: SizedBox(
                    height: 30,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: FThemes.green.light.colors.primary,
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: context.theme.colors.foreground,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  title: Text(AvailableThemeApp.green.name.capitalizeFirst()),
                ),
                FTile(
                  prefix: SizedBox(
                    height: 30,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: FThemes.blue.light.colors.primary,
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: context.theme.colors.foreground,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  title: Text(AvailableThemeApp.blue.name.capitalizeFirst()),
                ),
                FTile(
                  prefix: SizedBox(
                    height: 30,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: FThemes.yellow.light.colors.primary,
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: context.theme.colors.foreground,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  title: Text(AvailableThemeApp.yellow.name.capitalizeFirst()),
                ),
                FTile(
                  prefix: SizedBox(
                    height: 30,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: FThemes.violet.light.colors.primary,
                        shape: BoxShape.circle,
                        border: BoxBorder.all(
                          color: context.theme.colors.foreground,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  title: Text(AvailableThemeApp.violet.name.capitalizeFirst()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
