import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/resident_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvNotifier extends _$AppCctvNotifier {
  @override
  AsyncValue<TResponse<List<Resident>>?> build() {
    perform(ResidentQuery());
    return const AsyncValue.loading();
  }

  Future<void> perform(ResidentQuery params) async {
    state = AsyncValue.loading();

    final result = await ref.read(residentsUsecaseProvider).call(params);

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
