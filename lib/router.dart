import 'package:forui_base/features/block/presentation/screens/block/block_nominatim_search_screen.dart';
import 'package:forui_base/features/home/presentation/screens/home_screen_main.dart';
import 'package:forui_base/features/login/presentation/screens/login_screen.dart';
import 'package:forui_base/shared/presentation/screens/full_screen_photo_viewer.dart';
import 'package:forui_base/shared/presentation/screens/nominatim_search_location_screen.dart';
import 'package:go_router/go_router.dart';

enum RouteName {
  init,
  home,
  login,
  fullScreenPhotoViewer,
  nominatimSearchLocation,

  // block
  blockNominatimSearch,
}

final router = GoRouter(
  routes: [
    // General Purpose Route
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
      builder: (context, state) => HomeScreenMain(),
    ),
    GoRoute(
      path: '/full-screen-photo-viewer',
      name: RouteName.fullScreenPhotoViewer.name,
      builder: (context, state) {
        return FullScreenPhotoViewer(
          imageUrl: state.uri.queryParameters['imageUrl']!,
        );
      },
    ),
    GoRoute(
      path: '/nominatim-search-location',
      name: RouteName.nominatimSearchLocation.name,
      builder: (context, state) => NominatimSearchLocationScreen(),
    ),

    // Block Route
    GoRoute(
      path: '/block/nominatim-search',
      name: RouteName.blockNominatimSearch.name,
      builder: (context, state) => BlockNominatimSearchScreen(),
    ),

    // Mini Apps Route
  ],
);
