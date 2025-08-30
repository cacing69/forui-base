import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resident_usecase.g.dart';

@riverpod
ResidentUsecase residentUsecase(Ref ref) {
  return ResidentUsecase(ref.read(apiCctvRepositoryProvider));
}

class ResidentUsecase
    implements UseCase<TResponse<List<Resident>>, ResidentQuery> {
  final ApiCctvRepository repository;

  ResidentUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<List<Resident>>>> call(
    ResidentQuery params,
  ) async {
    return await repository.resident(params);
  }
}
