import 'package:forui_base/shared/data/models/api_cctv/district.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_list_district_cache.g.dart';

@riverpod
TResponseListDistrictCache tResponseListDistrictCache(Ref ref) {
  return TResponseListDistrictCache();
}

class TResponseListDistrictCache {
  static final TResponseListDistrictCache _instance =
      TResponseListDistrictCache._internal();
  factory TResponseListDistrictCache() => _instance;
  TResponseListDistrictCache._internal();

  Box<TResponse<List<District>>>? _box;

  final String _boxName = 'box_cached_t_response_list_district';

  Future<Box<TResponse<List<District>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<District>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<District>>?> get(String cityId) async {
    final box = await getBox();
    return box.get(keyName(cityId));
  }

  Future<void> put(String cityId, TResponse<List<District>> response) async {
    final box = await getBox();
    await box.put(keyName(cityId), response);
  }

  String keyName(String cityId) => 't_response_list_district_$cityId';
}
