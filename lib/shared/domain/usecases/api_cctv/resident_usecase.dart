import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_list_resident_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/logger_ref.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resident_usecase.g.dart';

@riverpod
ResidentUsecase residentUsecase(Ref ref) {
  return ResidentUsecase(
    ref.read(apiCctvRepositoryProvider),
    ref.read(loggerRefProvider),
    ref.read(tResponseListResidentCacheProvider),
  );
}

class ResidentUsecase
    implements UseCase<TResponse<List<Resident>>, ResidentQuery> {
  final ApiCctvRepository repository;
  final Logger logger;
  final TResponseListResidentCache cache;

  ResidentUsecase(this.repository, this.logger, this.cache);

  @override
  Future<Either<Failure, TResponse<List<Resident>>>> call(
    ResidentQuery params,
  ) async {
    // return await repository.resident(params);
    try {
      // cek cache
      final cacheData = await cache.get(params);
      if (cacheData != null) {
        logger.i("list_resident_cache_get:$params");
        return Right(cacheData);
      }

      // get from repository
      final response = await repository.resident(params);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          logger.i("list_resident_cache_put:$params");

          await cache.put(params, res);
        } catch (e) {
          logger.e("list_resident_cache_put_failed: $e");
        }
      }

      return response;
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
