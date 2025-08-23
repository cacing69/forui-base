import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/router.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader(
        title: const Text('Forui'),
        suffixes: [
          FHeaderAction(
            icon: Icon(FIcons.info),
            onPress: () => showFDialog(
              context: context,
              builder: (context, style, animation) => FDialog(
                style: style,
                animation: animation,
                direction: Axis.horizontal,
                title: const Text('About?'),
                body: const Text(
                  'This is a Flutter application built with the Forui UI toolkit.',
                ),
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
        ],
      ),
      child: Flexible(
        child: Column(
          children: [
            const SizedBox(height: 5),
            FCard(
              title: const Text('Login'),
              subtitle: const Text('Enter your account details to sign in.'),
              child: Column(
                children: [
                  const FTextField(
                    label: Text('Username'),
                    hint: 'John Renalo',
                  ),
                  const SizedBox(height: 10),
                  const FTextField.password(
                    label: Text('Password'),
                    hint: 'john@doe.com',
                  ),
                  const SizedBox(height: 16),
                  FButton(
                    onPress: () {
                      context.goNamed(RouteName.home.name);
                    },
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 16),
                  FButton(
                    style: FButtonStyle.outline(),
                    onPress: () {
                      context.goNamed(RouteName.home.name);
                    },
                    child: const Text('Register'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
