import 'package:forui_base/shared/data/models/api_cctv/city.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/city_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_city_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvCityNotifier extends _$AppCctvCityNotifier {
  @override
  AsyncValue<TResponse<List<City>>?> build() {
    return AsyncValue.data(
      TResponse<List<City>>(status: 'success', message: null, data: []),
    );
  }

  Future<void> perform(String parentId) async {
    state = AsyncValue.loading();

    final result = await ref.read(cityUsecaseProvider).call(parentId);

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
