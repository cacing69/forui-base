import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_screen.dart';
import 'package:forui_base/features/block/presentation/screens/block/backlog/block_backlog_screen.dart';
import 'package:forui_base/features/block/presentation/screens/block/image_bas64_viewer/block_image_base64_viewer_screen.dart';
import 'package:forui_base/features/block/presentation/screens/block/location_picker/block_location_picker_screen.dart';
import 'package:forui_base/features/block/presentation/screens/block/nominatim_search/block_nominatim_search_screen.dart';
import 'package:forui_base/features/home/presentation/screens/home_screen_main.dart';
import 'package:forui_base/features/auth/presentation/screens/login_screen.dart';
import 'package:forui_base/shared/presentation/screens/full_screen_image_base64_viewer_screen.dart';
import 'package:forui_base/shared/presentation/screens/full_screen_image_url_viewer_screen.dart';
import 'package:forui_base/shared/presentation/screens/nominatim_search_location_screen.dart';
import 'package:go_router/go_router.dart';

enum RouteName {
  // General
  init,
  home,
  login,
  fullScreenImageUrlViewer,
  fullScreenImageBase64Viewer,
  nominatimSearchLocation,

  // Block
  blockNominatimSearch,
  blockLocationPicker,
  blockImageBase64Viewer,
  blockBacklog,

  // App
  appCctv,
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
      path: '/block/image-base64-viewer',
      name: RouteName.blockImageBase64Viewer.name,
      builder: (context, state) => BlockImageBase64ViewerScreen(),
    ),

    GoRoute(
      path: '/block/backlog',
      name: RouteName.blockBacklog.name,
      builder: (context, state) => BlockBacklogScreen(),
    ),

    // Apps Route
    GoRoute(
      path: '/app/cctv',
      name: RouteName.appCctv.name,
      builder: (context, state) => AppCctvScreen(),
    ),
  ],
);
