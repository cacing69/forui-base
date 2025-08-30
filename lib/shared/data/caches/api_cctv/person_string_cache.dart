import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'person_string_cache.g.dart';

@riverpod
PersonStringCache personStringCacheRef(Ref ref) {
  return PersonStringCache();
}

class PersonStringCache {
  static final PersonStringCache _instance = PersonStringCache._internal();
  factory PersonStringCache() => _instance;
  PersonStringCache._internal();

  Box<String>? _box;

  final String _boxName = 'box_cached_person_key_value';

  Future<Box<String>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<String>(_boxName);
    return _box!;
  }

  Future<String?> get(String personId) async {
    final box = await getBox();
    return box.get(keyName(personId));
  }

  Future<void> put(String personId, String response) async {
    final box = await getBox();
    await box.put(keyName(personId), response);
  }

  String keyName(String personId) => personId;
}
