import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_person_list_gojek_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/gojek.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/logger_ref.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gojek_usecase.g.dart';

@riverpod
GojekUsecase gojekUsecase(Ref ref) {
  return GojekUsecase(
    ref.read(apiCctvRepositoryProvider),
    ref.read(loggerRefProvider),
    ref.read(tResponsePersonListGojekCacheRefProvider),
  );
}

class GojekUsecase implements UseCase<TResponse<List<Gojek>>, String> {
  final ApiCctvRepository repository;
  final Logger logger;
  final TResponsePersonListGojekCache cache;

  GojekUsecase(this.repository, this.logger, this.cache);

  @override
  Future<Either<Failure, TResponse<List<Gojek>>>> call(String personId) async {
    try {
      // cek cache
      final cacheData = await cache.get(personId);
      if (cacheData != null) {
        logger.i("person_gojek_cache_get:$personId");
        return Right(cacheData);
      }

      // get from repository
      final response = await repository.gojek(personId);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          logger.i("person_gojek_cache_put:$personId");

          await cache.put(personId, res);
        } catch (e) {
          logger.e("person_gojek_cache_put_failed: $e");
        }
      }

      return response;
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
