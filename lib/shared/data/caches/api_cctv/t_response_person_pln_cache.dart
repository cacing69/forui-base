import 'package:forui_base/shared/data/models/api_cctv/pln.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_person_pln_cache.g.dart';

@riverpod
TResponsePersonPlnCache tResponsePersonPlnCacheRef(Ref ref) {
  return TResponsePersonPlnCache();
}

class TResponsePersonPlnCache {
  static final TResponsePersonPlnCache _instance =
      TResponsePersonPlnCache._internal();
  factory TResponsePersonPlnCache() => _instance;
  TResponsePersonPlnCache._internal();

  Box<TResponse<List<Pln>>>? _box;

  final String _boxName = 'box_cached_t_response_person_pln';

  Future<Box<TResponse<List<Pln>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Pln>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Pln>>?> get(String personId) async {
    final box = await getBox();
    return box.get(keyName(personId));
  }

  Future<void> put(String personId, TResponse<List<Pln>> response) async {
    final box = await getBox();
    await box.put(keyName(personId), response);
  }

  String keyName(String personId) => 't_response_person_pln_$personId';
}
