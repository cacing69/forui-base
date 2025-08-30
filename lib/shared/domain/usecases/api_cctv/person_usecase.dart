import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/person_string_cache.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_person_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/person.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/logger_ref.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'person_usecase.g.dart';

@riverpod
PersonUsecase personUsecase(Ref ref) {
  return PersonUsecase(
    ref.read(apiCctvRepositoryProvider),
    ref.read(loggerRefProvider),
    ref.read(tResponsePersonCacheRefProvider),
    ref.read(personStringCacheRefProvider),
  );
}

class PersonUsecase implements UseCase<TResponse<Person>, String> {
  final ApiCctvRepository repository;
  final Logger logger;
  final TResponsePersonCache cache;
  final PersonStringCache history;

  PersonUsecase(this.repository, this.logger, this.cache, this.history);

  @override
  Future<Either<Failure, TResponse<Person>>> call(String personId) async {
    try {
      // cek cache
      final cacheData = await cache.get(personId);
      if (cacheData != null) {
        logger.i("person_cache_get:$personId");
        return Right(cacheData);
      }

      // get from repository
      final response = await repository.person(personId);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          logger.i("person_cache_put:$personId");

          await cache.put(personId, res);

          logger.i("person_history_put:$personId");
          await history.put(personId, res.data?.name ?? "-");
        } catch (e) {
          logger.e("person_cache_put_failed: $e");
        }
      }

      // return response
      return response;
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
