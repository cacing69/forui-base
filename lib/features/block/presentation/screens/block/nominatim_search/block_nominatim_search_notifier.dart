import 'package:forui_base/shared/data/models/nominatim/search_response.dart';
import 'package:forui_base/shared/domain/usecases/nominatim/search_location_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'block_nominatim_search_notifier.g.dart';

@Riverpod(keepAlive: true)
class BlockNominatimSearchNotifier extends _$BlockNominatimSearchNotifier {
  @override
  AsyncValue<List<SearchResponse>?> build() {
    perform("Indonesia");
    return const AsyncValue.loading();
  }

  Future<void> perform(String params) async {
    state = AsyncValue.loading();

    final result = await ref.read(searchLocationUsecaseProvider).call(params);

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
