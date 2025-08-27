import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/models/api_cctv/vehicle.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/vehicle_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_person_vehicle_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvPersonVehicleNotifier extends _$AppCctvPersonVehicleNotifier {
  @override
  AsyncValue<TResponse<List<Vehicle>>?> build() {
    return AsyncValue.data(
      TResponse<List<Vehicle>>(status: 'success', message: null, data: null),
    );
  }

  Future<void> perform(String params) async {
    state = AsyncValue.loading();

    final result = await ref.read(vehicleUsecaseProvider).call(params);

    result.fold(
      (failure) {
        state = AsyncValue.error(failure, StackTrace.current);
      },
      (data) {
        state = AsyncValue.data(data);
      },
    );
  }

  void reset() {
    state = const AsyncValue.data(null);
  }
}
