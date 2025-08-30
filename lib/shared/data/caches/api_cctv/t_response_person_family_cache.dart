import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/models/api_cctv/family.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_person_family_cache.g.dart';

@riverpod
TResponsePersonFamilyCache tResponsePersonFamilyCacheRef(Ref ref) {
  return TResponsePersonFamilyCache();
}

class TResponsePersonFamilyCache {
  static final TResponsePersonFamilyCache _instance =
      TResponsePersonFamilyCache._internal();
  factory TResponsePersonFamilyCache() => _instance;
  TResponsePersonFamilyCache._internal();

  Box<TResponse<List<Family>>>? _box;

  final String _boxName = 'box_cached_t_response_person_family';

  Future<Box<TResponse<List<Family>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Family>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Family>>?> get(String familyId) async {
    final box = await getBox();
    return box.get(keyName(familyId));
  }

  Future<void> put(String familyId, TResponse<List<Family>> response) async {
    final box = await getBox();
    await box.put(keyName(familyId), response);
  }

  String keyName(String familyId) => 't_response_person_family_$familyId';
}
