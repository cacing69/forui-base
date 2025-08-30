import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_list_resident_cache.g.dart';

@riverpod
TResponseListResidentCache tResponseListResidentCache(Ref ref) {
  return TResponseListResidentCache();
}

class TResponseListResidentCache {
  static final TResponseListResidentCache _instance =
      TResponseListResidentCache._internal();
  factory TResponseListResidentCache() => _instance;
  TResponseListResidentCache._internal();

  Box<TResponse<List<Resident>>>? _box;

  final String _boxName = 'box_cached_t_response_list_resident';

  Future<Box<TResponse<List<Resident>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Resident>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Resident>>?> get(ResidentQuery params) async {
    final box = await getBox();
    return box.get(keyName(params));
  }

  Future<void> put(
    ResidentQuery params,
    TResponse<List<Resident>> response,
  ) async {
    final box = await getBox();
    await box.put(keyName(params), response);
  }

  String keyName(ResidentQuery params) =>
      't_response_list_resident_${params.start}_${params.length}_${params.provinceId}_${params.cityId}_${params.districtId}_${params.villageId}_${params.minAge}_${params.maxAge}_${params.search}_${params.birthDate}';
}
