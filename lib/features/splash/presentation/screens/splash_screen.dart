import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/router.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _checkSession();
    });
  }

  Future<void> _checkSession() async {
    // check flag local for direct without request on network

    final prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey("isAuthenticated")) {
      final isAuthenticated = prefs.getBool("isAuthenticated");
      if (isAuthenticated != null) {
        if (context.mounted) {
          context.goNamed(RouteName.home.name);
          return;
        }
      }
    }

    final session = Supabase.instance.client.auth.currentSession;
    // setState(() {
    //   _loggedIn = session != null;
    //   _loading = false;
    // });

    if (session != null) {
      // already login
      if (context.mounted) {
        context.goNamed(RouteName.home.name);
      }
    } else {
      context.goNamed(RouteName.login.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 15,
          children: [
            FProgress.circularIcon(),
            Text("Checking session", style: context.theme.typography.base),
          ],
        ),
      ),
    );
  }
}
