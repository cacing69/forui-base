import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/models/api_cctv/family.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_person_list_family_cache.g.dart';

@riverpod
TResponsePersonListFamilyCache tResponsePersonListFamilyCacheRef(Ref ref) {
  return TResponsePersonListFamilyCache();
}

class TResponsePersonListFamilyCache {
  static final TResponsePersonListFamilyCache _instance =
      TResponsePersonListFamilyCache._internal();
  factory TResponsePersonListFamilyCache() => _instance;
  TResponsePersonListFamilyCache._internal();

  Box<TResponse<List<Family>>>? _box;

  final String _boxName = 'box_cached_t_response_person_list_family';

  Future<Box<TResponse<List<Family>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Family>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Family>>?> get(
    String familyCardId,
    String personId,
  ) async {
    final box = await getBox();
    return box.get(keyName(personId, familyCardId));
  }

  Future<void> put(
    String familyCardId,
    String personId,

    TResponse<List<Family>> response,
  ) async {
    final box = await getBox();
    await box.put(keyName(personId, familyCardId), response);
  }

  String keyName(String familyCardId, String personId) =>
      't_response_person_list_family_${familyCardId}_$personId';
}
