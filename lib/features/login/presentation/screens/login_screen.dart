import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/router.dart';
import 'package:forui_base/shared/presentation/providers/config_app_notifier.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader(
        title: const Text('Authentication'),
        suffixes: [
          FHeaderAction(
            icon: Icon(FIcons.info),
            onPress: () => showFDialog(
              context: context,
              builder: (context, style, animation) => FDialog(
                animation: animation,
                direction: Axis.horizontal,
                title: const Text('About?'),
                body: const Text('This is a Flutter application.'),
                actions: [
                  // FButton(
                  //   style: FButtonStyle.outline(),
                  //   onPress: () => Navigator.of(context).pop(),
                  //   child: const Text('Cancel'),
                  // ),
                  FButton(
                    onPress: () => context.pop(),
                    child: const Text('Close'),
                  ),
                ],
              ),
            ),
          ),
          FHeaderAction(
            icon:
                ref.watch(configAppNotifierProvider).themeData ==
                    FThemes.zinc.light
                ? Icon(FIcons.moon)
                : Icon(FIcons.sun),
            onPress: () {
              // debugPrint();

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
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 5),
          FCard(
            title: const Text('Login'),
            subtitle: const Text('Enter your account details to sign in.'),
            child: Column(
              children: [
                const FTextField(label: Text('Username'), hint: 'ex: cacing69'),
                const SizedBox(height: 10),
                Stack(
                  children: [
                    FTextField(
                      obscureText: _obscureText,
                      label: Text('Password'),
                      hint: 'ex: 123456',
                    ),
                    Positioned(
                      right: 0,
                      bottom: 1,
                      child: FButton.raw(
                        style: FButtonStyle.ghost(),
                        onPress: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            transitionBuilder: (child, animation) {
                              return ScaleTransition(
                                scale: animation,
                                child: FadeTransition(
                                  opacity: animation,
                                  child: child,
                                ),
                              );
                            },
                            child: _obscureText
                                ? Icon(
                                    FIcons.eyeOff,
                                    key: const ValueKey('eyeOff'),
                                  )
                                : Icon(FIcons.eye, key: const ValueKey('eye')),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                FButton(
                  onPress: () {
                    context.goNamed(RouteName.home.name);
                  },
                  child: const Text('Login'),
                ),
                Gap(10),
                FButton(
                  style: FButtonStyle.outline(),
                  onPress: () {
                    // context.goNamed(RouteName.home.name);
                  },
                  child: const Text('Register'),
                ),
                Gap(10),
                FButton(
                  style: FButtonStyle.ghost(),
                  onPress: () {
                    context.goNamed(RouteName.home.name);
                  },
                  child: const Text('Guest'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
