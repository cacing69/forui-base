import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/models/api_cctv/vehicle.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_person_list_vehicle_cache.g.dart';

@riverpod
TResponsePersonListVehicleCache tResponsePersonListVehicleCacheRef(Ref ref) {
  return TResponsePersonListVehicleCache();
}

class TResponsePersonListVehicleCache {
  static final TResponsePersonListVehicleCache _instance =
      TResponsePersonListVehicleCache._internal();
  factory TResponsePersonListVehicleCache() => _instance;
  TResponsePersonListVehicleCache._internal();

  Box<TResponse<List<Vehicle>>>? _box;

  final String _boxName = 'box_cached_t_response_person_list_vehicle';

  Future<Box<TResponse<List<Vehicle>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Vehicle>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Vehicle>>?> get(String personId) async {
    final box = await getBox();
    return box.get(keyName(personId));
  }

  Future<void> put(String personId, TResponse<List<Vehicle>> response) async {
    final box = await getBox();
    await box.put(keyName(personId), response);
  }

  String keyName(String personId) => 't_response_person_list_vehicle_$personId';
}
