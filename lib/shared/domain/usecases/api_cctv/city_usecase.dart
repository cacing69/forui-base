import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_list_city_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/city.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/logger_ref.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'city_usecase.g.dart';

@riverpod
CityUsecase cityUsecase(Ref ref) {
  return CityUsecase(
    ref.read(apiCctvRepositoryProvider),
    ref.read(loggerRefProvider),
    ref.read(tResponseListCityCacheProvider),
  );
}

class CityUsecase implements UseCase<TResponse<List<City>>, String> {
  final ApiCctvRepository repository;
  final Logger logger;
  final TResponseListCityCache cache;

  CityUsecase(this.repository, this.logger, this.cache);

  @override
  Future<Either<Failure, TResponse<List<City>>>> call(String provinceId) async {
    try {
      // cek cache
      final cacheData = await cache.get(provinceId);
      if (cacheData != null) {
        logger.i("city_cache_get:$provinceId");
        return Right(cacheData);
      }

      // get from repository
      final response = await repository.city(provinceId);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          logger.i("city_cache_put:$provinceId");

          await cache.put(provinceId, res);
        } catch (e) {
          logger.e("city_cache_put_failed: $e");
        }
      }

      return response;
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
