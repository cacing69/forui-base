import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/core/constant/assets.dart';
import 'package:forui_base/core/utils/helpers.dart';
import 'package:forui_base/router.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';

/// To run this example, replace this value with your client ID, and/or
/// update the relevant configuration files, as described in the README.
// String clientId =
//     "723034289820-laj5kvu11i8u0lftsvao6facpcn3fvhs.apps.googleusercontent.com";

// /// To run this example, replace this value with your server client ID, and/or
// /// update the relevant configuration files, as described in the README.
String? serverClientId =
    "723034289820-laj5kvu11i8u0lftsvao6facpcn3fvhs.apps.googleusercontent.com"; // Android

// String? serverClientId =
//     "723034289820-ngpiqla7cgvma3uui2qo9tk2vhc02f3c.apps.googleusercontent.com"; // Web

/// The scopes required by this application.
// #docregion CheckAuthorization
const List<String> scopes = <String>[
  'email',
  'profile',
  // 'https://www.googleapis.com/auth/contacts.readonly',
];
// #enddocregion CheckAuthorization

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool _obscureText = true;

  GoogleSignInAccount? _currentUser;
  bool _isAuthorized = false; // has granted permissions?
  String _contactText = '';
  String _errorMessage = '';
  String _serverAuthCode = '';

  Future<void>? _initialization;

  Future<void> _ensureInitialized() {
    // The example app uses the parsing of values from google-services.json
    // to provide the serverClientId, otherwise it would be required here.
    return _initialization ??=
        GoogleSignInPlatform.instance.init(
          InitParameters(serverClientId: serverClientId),
        )..catchError((dynamic _) {
          // debugPrint(e.toString());
          _initialization = null;
        });
  }

  // GoogleSignIn? _signIn;

  final GoogleSignIn _signIn = GoogleSignIn.instance;

  @override
  void initState() {
    super.initState();

    // #docregion Setup
    // _signIn = GoogleSignIn.instance;

    // unawaited(
    // _signIn.initialize(serverClientId: serverClientId).then((_) {
    //   _signIn.authenticationEvents
    //       .listen(_handleAuthenticationEvent)
    //       .onError(_handleAuthenticationError);

    //   /// This example always uses the stream-based approach to determining
    //   /// which UI state to show, rather than using the future returned here,
    //   /// if any, to conditionally skip directly to the signed-in state.
    //   _signIn.attemptLightweightAuthentication();
    // });
    // );
    // #enddocregion Setup
  }

  Future<void> _handleAuthenticationEvent(
    GoogleSignInAuthenticationEvent event,
  ) async {
    // #docregion CheckAuthorization
    final GoogleSignInAccount? user = // ...
        // #enddocregion CheckAuthorization
        switch (event) {
          GoogleSignInAuthenticationEventSignIn() => event.user,
          GoogleSignInAuthenticationEventSignOut() => null,
        };

    // Check for existing authorization.
    // #docregion CheckAuthorization
    final GoogleSignInClientAuthorization? authorization = await user
        ?.authorizationClient
        .authorizationForScopes(scopes);
    // #enddocregion CheckAuthorization

    setState(() {
      _currentUser = user;
      _isAuthorized = authorization != null;
      _errorMessage = '';
    });

    // If the user has already granted access to the required scopes, call the
    // REST API.
    if (user != null && authorization != null) {
      unawaited(_handleGetContact(user));
    }
  }

  Future<void> _handleAuthenticationError(Object e) async {
    setState(() {
      _currentUser = null;
      _isAuthorized = false;
      _errorMessage = e is GoogleSignInException
          ? _errorMessageFromSignInException(e)
          : 'Unknown error: $e';
    });
  }

  String _errorMessageFromSignInException(GoogleSignInException e) {
    // In practice, an application should likely have specific handling for most
    // or all of the, but for simplicity this just handles cancel, and reports
    // the rest as generic errors.
    return switch (e.code) {
      GoogleSignInExceptionCode.canceled => 'Sign in canceled',
      _ => 'GoogleSignInException ${e.code}: ${e.description}',
    };
  }

  // Calls the People API REST endpoint for the signed-in user to retrieve information.
  Future<void> _handleGetContact(GoogleSignInAccount user) async {
    setState(() {
      _contactText = 'Loading contact info...';
    });
    final Map<String, String>? headers = await user.authorizationClient
        .authorizationHeaders(scopes);
    if (headers == null) {
      setState(() {
        _contactText = '';
        _errorMessage = 'Failed to construct authorization headers.';
      });
      return;
    }

    // final http.Response response = await http.get(
    //   Uri.parse(
    //     'https://people.googleapis.com/v1/people/me/connections'
    //     '?requestMask.includeField=person.names',
    //   ),
    //   headers: headers,
    // );

    // if (response.statusCode != 200) {
    // if (response.statusCode == 401 || response.statusCode == 403) {
    //   setState(() {
    //     _isAuthorized = false;
    //     _errorMessage =
    //         'People API gave a ${response.statusCode} response. '
    //         'Please re-authorize access.';
    //   });
    // } else {
    //   print('People API ${response.statusCode} response: ${response.body}');
    //   setState(() {
    //     _contactText =
    //         'People API gave a ${response.statusCode} '
    //         'response. Check logs for details.';
    //   });
    // }
    // return;
    // }

    // final Map<String, dynamic> data =
    //     json.decode(response.body) as Map<String, dynamic>;
    // final String? namedContact = _pickFirstNamedContact(data);
    // setState(() {
    //   if (namedContact != null) {
    //     _contactText = 'I see you know $namedContact!';
    //   } else {
    //     _contactText = 'No contacts to display.';
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader(
        title: const Text('Authentication'),
        suffixes: [
          // FHeaderAction(
          //   icon:
          //       ref.watch(configAppNotifierProvider).themeData ==
          //           FThemes.zinc.light
          //       ? Icon(FIcons.moon)
          //       : Icon(FIcons.sun),
          //   onPress: () {
          //     if (ref.watch(configAppNotifierProvider).themeData ==
          //         FThemes.zinc.light) {
          //       ref
          //           .read(configAppNotifierProvider.notifier)
          //           .changeTheme(FThemes.zinc.dark);
          //     } else {
          //       ref
          //           .read(configAppNotifierProvider.notifier)
          //           .changeTheme(FThemes.zinc.light);
          //     }
          //   },
          // ),
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
      child: FTabs(
        initialIndex: 0,
        children: [
          FTabEntry(
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [Icon(FIcons.lockKeyhole), Text("Login")],
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                FCard(
                  title: const Text('Login'),
                  subtitle: const Text(
                    'Enter your account details to sign in.',
                  ),
                  child: Column(
                    children: [
                      const FTextField(
                        label: Text('Username'),
                        hint: 'ex: cacing69',
                      ),
                      const SizedBox(height: 10),
                      Stack(
                        children: [
                          FTextField(
                            obscureText: _obscureText,
                            label: Text('Password'),
                            hint: 'ex: 123456',
                            style: (e) => e.copyWith(
                              contentPadding: e.contentPadding.add(
                                EdgeInsetsGeometry.only(right: 25),
                              ),
                            ),
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
                                      : Icon(
                                          FIcons.eye,
                                          key: const ValueKey('eye'),
                                        ),
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
                      Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FButton(
                            style: FButtonStyle.outline(),
                            onPress: () async {
                              // await _ensureInitialized();

                              // try {
                              //   final AuthenticationResults?
                              //   result = await GoogleSignInPlatform.instance
                              //       .attemptLightweightAuthentication(
                              //         const AttemptLightweightAuthenticationParameters(),
                              //       );

                              //   debugPrint(result.toString());
                              //   // _setUser(result?.user);
                              // } on GoogleSignInException catch (e) {
                              //   setState(() {
                              //     _errorMessage =
                              //         e.code ==
                              //             GoogleSignInExceptionCode.canceled
                              //         ? ''
                              //         : 'GoogleSignInException ${e.code}: ${e.description}';
                              //   });
                              // }

                              try {
                                await _ensureInitialized();
                                final AuthenticationResults result =
                                    await GoogleSignInPlatform.instance
                                        .authenticate(
                                          const AuthenticateParameters(),
                                        );

                                debugPrint(result.toString());
                                // _setUser(result.user);
                              } on GoogleSignInException catch (e) {
                                setState(() {
                                  _errorMessage =
                                      e.code ==
                                          GoogleSignInExceptionCode.canceled
                                      ? ''
                                      : 'GoogleSignInException ${e.code}: ${e.description}';
                                });

                                showFlutterToast(message: _errorMessage);
                              }

                              // #docregion ExplicitSignIn
                              // if (_signIn!.supportsAuthenticate()) {
                              //   try {
                              //     final GoogleSignInAccount account =
                              //         await _signIn!.authenticate(
                              //           scopeHint: scopes,
                              //         );

                              //     debugPrint(account.toString());
                              //   } catch (e) {
                              //     // #enddocregion ExplicitSignIn
                              //     _errorMessage = e.toString();
                              //     // #docregion ExplicitSignIn
                              //   }
                              // }
                              // if (GoogleSignIn.instance.supportsAuthenticate())
                              //   ElevatedButton(
                              //     onPressed: () async {
                              //       try {
                              //         await GoogleSignIn.instance.authenticate();
                              //       } catch (e) {
                              //         // #enddocregion ExplicitSignIn
                              //         _errorMessage = e.toString();
                              //         // #docregion ExplicitSignIn
                              //       }
                              //     },
                              //     child: const Text('SIGN IN'),
                              //   )
                              // else ...<Widget>[
                              //   if (kIsWeb)
                              //     web.renderButton()
                              //   // #enddocregion ExplicitSignIn
                              //   else
                              //     const Text(
                              //         'This platform does not have a known authentication method')
                              //   // #docregion ExplicitSignIn
                              // ]
                              // // #enddocregion ExplicitSignIn
                            },
                            // prefix: SvgPicture.asset(Assets.svgIcons.googleGLogo),
                            child: SvgPicture.asset(
                              Assets.svgIcons.googleGLogo,
                            ),
                          ),
                        ],
                      ),
                      Gap(10),
                      FButton(
                        style: FButtonStyle.ghost(),
                        onPress: () {
                          context.goNamed(RouteName.home.name);
                        },
                        child: const Text('Login as Guest'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          FTabEntry(
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [Icon(FIcons.userPlus), Text("Register")],
            ),
            child: Column(children: [Placeholder()]),
          ),
        ],
      ),
    );
  }
}
