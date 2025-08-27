import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/gojek.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gojek_usecase.g.dart';

@riverpod
GojekUsecase gojekUsecase(Ref ref) {
  return GojekUsecase(ref.watch(apiCctvRepositoryProvider));
}

class GojekUsecase implements UseCase<TResponse<List<Gojek>>, String> {
  final ApiCctvRepository repository;

  GojekUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<List<Gojek>>>> call(String params) async {
    return await repository.gojek(params);
  }
}
