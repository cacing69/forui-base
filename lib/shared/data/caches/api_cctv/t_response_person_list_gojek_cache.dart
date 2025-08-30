import 'package:forui_base/shared/data/models/api_cctv/gojek.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_person_list_gojek_cache.g.dart';

@riverpod
TResponsePersonListGojekCache tResponsePersonListGojekCacheRef(Ref ref) {
  return TResponsePersonListGojekCache();
}

class TResponsePersonListGojekCache {
  static final TResponsePersonListGojekCache _instance =
      TResponsePersonListGojekCache._internal();
  factory TResponsePersonListGojekCache() => _instance;
  TResponsePersonListGojekCache._internal();

  Box<TResponse<List<Gojek>>>? _box;

  final String _boxName = 'box_cached_t_response_person_list_gojek';

  Future<Box<TResponse<List<Gojek>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Gojek>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Gojek>>?> get(String personId) async {
    final box = await getBox();
    return box.get(keyName(personId));
  }

  Future<void> put(String personId, TResponse<List<Gojek>> response) async {
    final box = await getBox();
    await box.put(keyName(personId), response);
  }

  String keyName(String personId) => 't_response_person_list_gojek_$personId';
}
