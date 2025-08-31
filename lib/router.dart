import 'package:forui_base/features/app/presentation/screens/app_routes.dart';
import 'package:forui_base/features/block/presentation/screens/block_routes.dart';
import 'package:forui_base/features/home/presentation/screens/home_screen_main.dart';
import 'package:forui_base/features/auth/presentation/screens/login_screen.dart';
import 'package:forui_base/features/splash/presentation/screens/splash_screen.dart';
import 'package:forui_base/shared/presentation/screens/theme_switcher_screen.dart';
import 'package:forui_base/shared/presentation/screens/full_screen_image_base64_viewer_screen.dart';
import 'package:forui_base/shared/presentation/screens/full_screen_image_url_viewer_screen.dart';
import 'package:forui_base/shared/presentation/screens/nominatim_search_location_screen.dart';
import 'package:go_router/go_router.dart';

enum RouteName {
  // General
  init,
  home,
  login,
  themeSwither,
  fullScreenImageUrlViewer,
  fullScreenImageBase64Viewer,
  nominatimSearchLocation,
}

final List<GoRoute> defaultRouter = [
  // General Purpose Route
  GoRoute(
    path: '/',
    name: RouteName.init.name,
    builder: (context, state) => SplashScreen(),
    // builder: (context, state) => BlockWebviewSubmitScreen(),
  ),
  GoRoute(
    path: '/login',
    name: RouteName.login.name,
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: '/home',
    name: RouteName.home.name,
    builder: (context, state) => HomeScreenMain(),
  ),
  GoRoute(
    path: '/theme-switcher',
    name: RouteName.themeSwither.name,
    builder: (context, state) => ThemeSwitcherScreen(),
  ),
  GoRoute(
    path: '/full-screen-image-url-viewer',
    name: RouteName.fullScreenImageUrlViewer.name,
    builder: (context, state) {
      return FullScreenImageUrlViewerScreen(
        imageUrl: state.uri.queryParameters['imageUrl']!,
      );
    },
  ),
  GoRoute(
    path: '/full-screen-image-base64-viewer',
    name: RouteName.fullScreenImageBase64Viewer.name,
    builder: (context, state) {
      return FullScreenImageBase64ViewerScreen(
        base64: state.uri.queryParameters['base64']!,
      );
    },
  ),
  GoRoute(
    path: '/nominatim-search-location',
    name: RouteName.nominatimSearchLocation.name,
    builder: (context, state) => NominatimSearchLocationScreen(),
  ),
];

final router = GoRouter(
  initialLocation: '/',
  // initialLocation: '/app/cctv/list-resident',
  // initialLocation: '/app/cctv/person/viewed',
  routes: [...defaultRouter, ...blockRoutes, ...featureAppRoutes],
);
