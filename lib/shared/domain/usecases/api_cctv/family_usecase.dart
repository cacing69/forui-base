import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/family.dart';
import 'package:forui_base/shared/data/models/api_cctv/family_path_params.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'family_usecase.g.dart';

@riverpod
FamilyUsecase familyUsecase(Ref ref) {
  return FamilyUsecase(ref.watch(apiCctvRepositoryProvider));
}

class FamilyUsecase
    implements UseCase<TResponse<List<Family>>, FamilyPathParams> {
  final ApiCctvRepository repository;

  FamilyUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<List<Family>>>> call(
    FamilyPathParams params,
  ) async {
    return await repository.family(params);
  }
}
