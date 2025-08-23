import 'package:forui_base/features/home/presentation/screens/home_screen.dart';
import 'package:forui_base/features/login/presentation/screens/login_screen.dart';
import 'package:go_router/go_router.dart';

enum RouteName { init, home, login }

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: RouteName.init.name,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/login',
      name: RouteName.login.name,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      name: RouteName.home.name,
      builder: (context, state) => HomeScreen(),
    ),
  ],
);
