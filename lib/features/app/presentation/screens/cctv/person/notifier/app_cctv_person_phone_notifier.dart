import 'package:forui_base/shared/data/models/api_cctv/phone.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/phone_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_person_phone_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvPersonPhoneNotifier extends _$AppCctvPersonPhoneNotifier {
  @override
  AsyncValue<TResponse<List<Phone>>?> build() {
    return AsyncValue.data(
      TResponse<List<Phone>>(status: 'success', message: null, data: null),
    );
  }

  Future<void> perform(String params) async {
    state = AsyncValue.loading();

    final result = await ref.read(phoneUsecaseProvider).call(params);

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
