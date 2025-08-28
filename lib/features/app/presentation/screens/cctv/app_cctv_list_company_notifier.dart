import 'package:flutter/cupertino.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/data/models/api_cctv/company_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/companies_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_list_company_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvListCompanyNotifier extends _$AppCctvListCompanyNotifier {
  @override
  AsyncValue<TResponse<List<Company>>?> build() {
    return AsyncValue.loading();
  }

  Future<void> perform(CompanyQuery params) async {
    state = AsyncValue.loading();

    final result = await ref.read(companiesUsecaseProvider).call(params);

    result.fold(
      (failure) {
        debugPrint(failure.message);
        debugPrintStack(stackTrace: StackTrace.current);
        state = AsyncValue.error(failure, StackTrace.current);
      },
      (data) {
        debugPrint("data.toString():${data.toString()}");
        state = AsyncValue.data(data);
      },
    );
  }

  void reset() {
    state = const AsyncValue.data(null);
  }
}
