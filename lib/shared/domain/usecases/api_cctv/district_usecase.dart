import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_list_district_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/district.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/logger_ref.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'district_usecase.g.dart';

@riverpod
DistrictUsecase districtUsecase(Ref ref) {
  return DistrictUsecase(
    ref.read(apiCctvRepositoryProvider),
    ref.read(loggerRefProvider),
    ref.read(tResponseListDistrictCacheProvider),
  );
}

class DistrictUsecase implements UseCase<TResponse<List<District>>, String> {
  final ApiCctvRepository repository;
  final Logger logger;
  final TResponseListDistrictCache cache;

  DistrictUsecase(this.repository, this.logger, this.cache);

  @override
  Future<Either<Failure, TResponse<List<District>>>> call(String cityId) async {
    try {
      // cek cache
      final cacheData = await cache.get(cityId);
      if (cacheData != null) {
        logger.i("district_cache_get:$cityId");
        return Right(cacheData);
      }

      // get from repository
      final response = await repository.district(cityId);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          logger.i("district_cache_put:$cityId");

          await cache.put(cityId, res);
        } catch (e) {
          logger.e("district_cache_put_failed: $e");
        }
      }

      return response;
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
