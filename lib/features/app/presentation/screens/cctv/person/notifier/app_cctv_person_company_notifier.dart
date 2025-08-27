import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/company_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_person_company_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvPersonCompanyNotifier extends _$AppCctvPersonCompanyNotifier {
  @override
  AsyncValue<TResponse<List<Company>>?> build(String personId) {
    return AsyncValue.data(
      TResponse<List<Company>>(status: 'success', message: null, data: null),
    );
  }

  Future<void> perform(String params) async {
    state = AsyncValue.loading();

    final result = await ref.read(companyUsecaseProvider).call(params);

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
