import 'package:forui_base/shared/data/models/api_cctv/village.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/village_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_village_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvVillageNotifier extends _$AppCctvVillageNotifier {
  @override
  AsyncValue<TResponse<List<Village>>?> build() {
    return AsyncValue.loading();
  }

  Future<void> perform(String parentId) async {
    state = AsyncValue.loading();

    final result = await ref.read(villageUsecaseProvider).call(parentId);

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
