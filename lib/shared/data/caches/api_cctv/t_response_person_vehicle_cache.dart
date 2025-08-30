import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/models/api_cctv/vehicle.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_person_vehicle_cache.g.dart';

@riverpod
TResponsePersonVehicleCache tResponsePersonVehicleCacheRef(Ref ref) {
  return TResponsePersonVehicleCache();
}

class TResponsePersonVehicleCache {
  static final TResponsePersonVehicleCache _instance =
      TResponsePersonVehicleCache._internal();
  factory TResponsePersonVehicleCache() => _instance;
  TResponsePersonVehicleCache._internal();

  Box<TResponse<List<Vehicle>>>? _box;

  final String _boxName = 'box_cached_t_response_person_vehicle';

  Future<Box<TResponse<List<Vehicle>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Vehicle>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Vehicle>>?> get(String vehicleId) async {
    final box = await getBox();
    return box.get(keyName(vehicleId));
  }

  Future<void> put(String vehicleId, TResponse<List<Vehicle>> response) async {
    final box = await getBox();
    await box.put(keyName(vehicleId), response);
  }

  String keyName(String vehicleId) => 't_response_person_vehicle_$vehicleId';
}
