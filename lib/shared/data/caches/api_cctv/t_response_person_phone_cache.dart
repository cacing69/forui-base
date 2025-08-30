import 'package:forui_base/shared/data/models/api_cctv/phone.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_person_phone_cache.g.dart';

@riverpod
TResponsePersonPhoneCache tResponsePersonPhoneCacheRef(Ref ref) {
  return TResponsePersonPhoneCache();
}

class TResponsePersonPhoneCache {
  static final TResponsePersonPhoneCache _instance =
      TResponsePersonPhoneCache._internal();
  factory TResponsePersonPhoneCache() => _instance;
  TResponsePersonPhoneCache._internal();

  Box<TResponse<List<Phone>>>? _box;

  final String _boxName = 'box_cached_t_response_person_phone';

  Future<Box<TResponse<List<Phone>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Phone>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Phone>>?> get(String personId) async {
    final box = await getBox();
    return box.get(keyName(personId));
  }

  Future<void> put(String personId, TResponse<List<Phone>> response) async {
    final box = await getBox();
    await box.put(keyName(personId), response);
  }

  String keyName(String personId) => 't_response_person_phone_$personId';
}
