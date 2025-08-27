import 'package:forui_base/shared/data/models/api_cctv/person.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/person_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_person_tab_family_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvPersonTabFamilyNotifier extends _$AppCctvPersonTabFamilyNotifier {
  @override
  AsyncValue<TResponse<Person>?> build() {
    return AsyncValue.data(
      TResponse<Person>(status: 'success', message: null, data: null),
    );
  }

  Future<void> perform(String params) async {
    state = AsyncValue.loading();

    final result = await ref.read(personUsecaseProvider).call(params);

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
