import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_list_village_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/village.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/logger_ref.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'village_usecase.g.dart';

@riverpod
VillageUsecase villageUsecase(Ref ref) {
  return VillageUsecase(
    ref.read(apiCctvRepositoryProvider),
    ref.read(loggerRefProvider),
    ref.read(tResponseListVillageCacheProvider),
  );
}

class VillageUsecase implements UseCase<TResponse<List<Village>>, String> {
  final ApiCctvRepository repository;
  final Logger logger;
  final TResponseListVillageCache cache;

  VillageUsecase(this.repository, this.logger, this.cache);

  @override
  Future<Either<Failure, TResponse<List<Village>>>> call(
    String districtId,
  ) async {
    try {
      // cek cache
      final cacheData = await cache.get(districtId);
      if (cacheData != null) {
        logger.i("village_cache_get:$districtId");
        return Right(cacheData);
      }

      // get from repository
      final response = await repository.village(districtId);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          logger.i("village_cache_put:$districtId");

          await cache.put(districtId, res);
        } catch (e) {
          logger.e("village_cache_put_failed: $e");
        }
      }

      return response;
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
