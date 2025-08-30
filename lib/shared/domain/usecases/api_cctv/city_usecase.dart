import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/city.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'city_usecase.g.dart';

@riverpod
CityUsecase cityUsecase(Ref ref) {
  return CityUsecase(ref.read(apiCctvRepositoryProvider));
}

class CityUsecase implements UseCase<TResponse<List<City>>, String> {
  final ApiCctvRepository repository;

  CityUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<List<City>>>> call(String params) async {
    return await repository.city(params);
  }
}
