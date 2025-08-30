import 'package:forui_base/shared/data/models/api_cctv/city.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_list_city_cache.g.dart';

@riverpod
TResponseListCityCache tResponseListCityCache(Ref ref) {
  return TResponseListCityCache();
}

class TResponseListCityCache {
  static final TResponseListCityCache _instance =
      TResponseListCityCache._internal();
  factory TResponseListCityCache() => _instance;
  TResponseListCityCache._internal();

  Box<TResponse<List<City>>>? _box;

  final String _boxName = 'box_cached_t_response_list_city';

  Future<Box<TResponse<List<City>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<City>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<City>>?> get(String provinceId) async {
    final box = await getBox();
    return box.get(keyName(provinceId));
  }

  Future<void> put(String provinceId, TResponse<List<City>> response) async {
    final box = await getBox();
    await box.put(keyName(provinceId), response);
  }

  String keyName(String provinceId) => 't_response_list_city_$provinceId';
}
