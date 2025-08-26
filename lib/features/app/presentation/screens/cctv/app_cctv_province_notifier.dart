import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/province_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_province_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvProvinceNotifier extends _$AppCctvProvinceNotifier {
  @override
  AsyncValue<TResponse<List<Province>>?> build() {
    perform();
    return const AsyncValue.loading();
  }

  Future<void> perform() async {
    state = AsyncValue.loading();

    final result = await ref.read(provinceUsecaseProvider).call(NoParams());

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
