import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_list_province_cache.g.dart';

@riverpod
TResponseListProvinceCache tResponseListProvinceCache(Ref ref) {
  return TResponseListProvinceCache();
}

class TResponseListProvinceCache {
  static final TResponseListProvinceCache _instance =
      TResponseListProvinceCache._internal();
  factory TResponseListProvinceCache() => _instance;
  TResponseListProvinceCache._internal();

  Box<TResponse<List<Province>>>? _box;

  final String _boxName = 'box_cached_t_response_list_province';

  Future<Box<TResponse<List<Province>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Province>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Province>>?> get(String provinceId) async {
    final box = await getBox();
    return box.get(keyName(provinceId));
  }

  Future<void> put(
    String provinceId,
    TResponse<List<Province>> response,
  ) async {
    final box = await getBox();
    await box.put(keyName(provinceId), response);
  }

  String keyName(String provinceId) => 't_response_list_province_$provinceId';
}
