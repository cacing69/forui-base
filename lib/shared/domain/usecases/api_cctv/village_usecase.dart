import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/village.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'village_usecase.g.dart';

@riverpod
VillageUsecase villageUsecase(Ref ref) {
  return VillageUsecase(ref.watch(apiCctvRepositoryProvider));
}

class VillageUsecase implements UseCase<TResponse<List<Village>>, String> {
  final ApiCctvRepository repository;

  VillageUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<List<Village>>>> call(String params) async {
    return await repository.village(params);
  }
}
