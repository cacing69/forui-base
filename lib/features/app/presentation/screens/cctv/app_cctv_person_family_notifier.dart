import 'package:forui_base/shared/data/models/api_cctv/family.dart';
import 'package:forui_base/shared/data/models/api_cctv/family_path_params.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/family_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_person_family_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvPersonFamilyNotifier extends _$AppCctvPersonFamilyNotifier {
  @override
  AsyncValue<TResponse<List<Family>>?> build() {
    return AsyncValue.data(
      TResponse<List<Family>>(status: 'success', message: null, data: null),
    );
  }

  Future<void> perform(FamilyPathParams params) async {
    state = AsyncValue.loading();

    final result = await ref.read(familyUsecaseProvider).call(params);

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
