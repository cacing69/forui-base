import 'package:forui_base/shared/data/models/api_cctv/person.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_person_cache.g.dart';

@riverpod
TResponsePersonCache tResponsePersonCacheRef(Ref ref) {
  return TResponsePersonCache();
}

class TResponsePersonCache {
  static final TResponsePersonCache _instance =
      TResponsePersonCache._internal();
  factory TResponsePersonCache() => _instance;
  TResponsePersonCache._internal();

  Box<TResponse<Person>>? _box;

  final String _boxName = 'box_cached_t_response_person';

  Future<Box<TResponse<Person>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<Person>>(_boxName);
    return _box!;
  }

  Future<TResponse<Person>?> get(String personId) async {
    final box = await getBox();
    return box.get(keyName(personId));
  }

  Future<void> put(String personId, TResponse<Person> response) async {
    final box = await getBox();
    await box.put(keyName(personId), response);
  }

  String keyName(String personId) => 't_response_person_$personId';
}
