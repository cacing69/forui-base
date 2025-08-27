import 'package:forui_base/shared/data/models/api_cctv/gojek.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/gojek_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_person_gojek_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvPersonGojekNotifier extends _$AppCctvPersonGojekNotifier {
  @override
  AsyncValue<TResponse<List<Gojek>>?> build() {
    return AsyncValue.data(
      TResponse<List<Gojek>>(status: 'success', message: null, data: null),
    );
  }

  Future<void> perform(String params) async {
    state = AsyncValue.loading();

    final result = await ref.read(gojekUsecaseProvider).call(params);

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
