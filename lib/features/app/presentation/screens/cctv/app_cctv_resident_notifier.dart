import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/domain/usecases/api_cctv/resident_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_resident_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvResidentNotifier extends _$AppCctvResidentNotifier {
  @override
  AsyncValue<TResponse<List<Resident>>?> build() {
    // perform(ResidentQuery());

    return AsyncValue.loading();

    // return AsyncValue.data(
    //   TResponse<List<Resident>>(status: 'success', message: null, data: []),
    // );
  }

  Future<void> perform(ResidentQuery params) async {
    state = AsyncValue.loading();

    final result = await ref.read(residentUsecaseProvider).call(params);

    result.fold(
      (failure) {
        state = AsyncValue.error(failure, StackTrace.current);
      },
      (data) {
        state = AsyncValue.data(data);
      },
    );
  }

  // Future<void> fetchMore() async {
  //   final int start = state.value!.data!.length;

  //   state = AsyncValue.loading();

  //   final result = await ref
  //       .read(residentUsecaseProvider)
  //       .call(
  //         ref
  //             .read(appCctvQueryNotifierProvider)
  //             .copyWith(start: start.toString()),
  //       );

  //   result.fold(
  //     (failure) {
  //       state = AsyncValue.error(failure, StackTrace.current);
  //     },
  //     (data) {
  //       state = AsyncValue.data(data);

  //       return AsyncValue.data(
  //         TResponse<List<Resident>>(
  //           status: 'success',
  //           message: null,
  //           data: [...state.value!.data!, ...data.data!],
  //         ),
  //       );
  //     },
  //   );
  // }

  void reset() {
    state = const AsyncValue.data(null);
  }
}

// @riverpod
// PagingController<int, Resident> residentPagingController(
//   ResidentPagingControllerRef ref,
// ) {
//   final controller = PagingController<int, Resident>(firstPageKey: 0);

//   controller.addPageRequestListener((pageKey) async {
//     final start = pageKey * 5;
//     final result = await ref
//         .read(appCctvResidentNotifierProvider.notifier)
//         .perform(
//           ref
//               .read(appCctvQueryNotifierProvider)
//               .copyWith(start: start.toString()),
//         );
//     final newItems = result?.data ?? [];

//     if (newItems.isEmpty) {
//       controller.appendLastPage(newItems);
//     } else {
//       controller.appendPage(newItems, pageKey + 1);
//     }
//   });

//   ref.onDispose(controller.dispose);
//   return controller;
// }
