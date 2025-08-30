import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'province_usecase.g.dart';

@riverpod
ProvinceUsecase provinceUsecase(Ref ref) {
  return ProvinceUsecase(ref.read(apiCctvRepositoryProvider));
}

class ProvinceUsecase implements UseCase<TResponse<List<Province>>, NoParams> {
  final ApiCctvRepository repository;

  ProvinceUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<List<Province>>>> call(
    NoParams params,
  ) async {
    return await repository.province();
  }
}
