import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/models/api_cctv/village.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_list_village_cache.g.dart';

@riverpod
TResponseListVillageCache tResponseListVillageCache(Ref ref) {
  return TResponseListVillageCache();
}

class TResponseListVillageCache {
  static final TResponseListVillageCache _instance =
      TResponseListVillageCache._internal();
  factory TResponseListVillageCache() => _instance;
  TResponseListVillageCache._internal();

  Box<TResponse<List<Village>>>? _box;

  final String _boxName = 'box_cached_t_response_list_village';

  Future<Box<TResponse<List<Village>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Village>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Village>>?> get(String cityId) async {
    final box = await getBox();
    return box.get(keyName(cityId));
  }

  Future<void> put(String cityId, TResponse<List<Village>> response) async {
    final box = await getBox();
    await box.put(keyName(cityId), response);
  }

  String keyName(String cityId) => 't_response_list_village_$cityId';
}
