import 'package:forui_base/features/block/presentation/screens/block/backlog/block_backlog_screen.dart';
import 'package:forui_base/features/block/presentation/screens/block/image_bas64_viewer/block_image_base64_viewer_screen.dart';
import 'package:forui_base/features/block/presentation/screens/block/location_picker/block_location_picker_screen.dart';
import 'package:forui_base/features/block/presentation/screens/block/nominatim_search/block_nominatim_search_screen.dart';
import 'package:go_router/go_router.dart';

enum BlockRouteName {
  // Block
  blockNominatimSearch,
  blockLocationPicker,
  blockImageBase64Viewer,
  blockBacklog,
}

final List<GoRoute> blockRoutes = [
  // Block Route
  GoRoute(
    path: '/block/nominatim-search',
    name: BlockRouteName.blockNominatimSearch.name,
    builder: (context, state) => BlockNominatimSearchScreen(),
  ),

  GoRoute(
    path: '/block/location-picker',
    name: BlockRouteName.blockLocationPicker.name,
    builder: (context, state) => BlockLocationPickerScreen(),
  ),
  GoRoute(
    path: '/block/image-base64-viewer',
    name: BlockRouteName.blockImageBase64Viewer.name,
    builder: (context, state) => BlockImageBase64ViewerScreen(),
  ),

  GoRoute(
    path: '/block/backlog',
    name: BlockRouteName.blockBacklog.name,
    builder: (context, state) => BlockBacklogScreen(),
  ),
];
