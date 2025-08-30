import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/district.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'district_usecase.g.dart';

@riverpod
DistrictUsecase districtUsecase(Ref ref) {
  return DistrictUsecase(ref.read(apiCctvRepositoryProvider));
}

class DistrictUsecase implements UseCase<TResponse<List<District>>, String> {
  final ApiCctvRepository repository;

  DistrictUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<List<District>>>> call(String params) async {
    return await repository.district(params);
  }
}
