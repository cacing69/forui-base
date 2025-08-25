import 'package:forui_base/features/block/presentation/screens/block/backlog/block_backlog_screen.dart';
import 'package:forui_base/features/block/presentation/screens/block/location_picker/block_location_picker_screen.dart';
import 'package:forui_base/features/block/presentation/screens/block/nominatim_search/block_nominatim_search_screen.dart';
import 'package:forui_base/features/home/presentation/screens/home_screen_main.dart';
import 'package:forui_base/features/auth/presentation/screens/login_screen.dart';
import 'package:forui_base/shared/presentation/screens/full_screen_photo_viewer_screen.dart';
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
  blockLocationPicker,
  blockBacklog,
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
        return FullScreenPhotoViewerScreen(
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

    GoRoute(
      path: '/block/location-picker',
      name: RouteName.blockLocationPicker.name,
      builder: (context, state) => BlockLocationPickerScreen(),
    ),

    GoRoute(
      path: '/block/backlog',
      name: RouteName.blockBacklog.name,
      builder: (context, state) => BlockBacklogScreen(),
    ),

    // Mini Apps Route
  ],
);
