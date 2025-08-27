import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/pln.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pln_usecase.g.dart';

@riverpod
PlnUsecase plnUsecase(Ref ref) {
  return PlnUsecase(ref.watch(apiCctvRepositoryProvider));
}

class PlnUsecase implements UseCase<TResponse<List<Pln>>, String> {
  final ApiCctvRepository repository;

  PlnUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<List<Pln>>>> call(String params) async {
    return await repository.pln(params);
  }
}
