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
  final ApiCctvRepository _repository;
  final Logger _logger;
  final TResponsePersonCache _cache;
  final PersonStringCache _history;

  PersonUsecase(this._repository, this._logger, this._cache, this._history);

  @override
  Future<Either<Failure, TResponse<Person>>> call(String personId) async {
    try {
      // cek cache
      final cacheData = await _cache.get(personId);
      if (cacheData != null) {
        if (await _history.get(personId) == null) {
          _logger.i("person_history_put:$personId");
          await _history.put(personId, cacheData.data?.name ?? "-");
        }

        return Right(cacheData);
      }

      // get from repository
      final response = await _repository.person(personId);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          _logger.i("person_cache_put:$personId");

          await _cache.put(personId, res);

          _logger.i("person_history_put:$personId");
          await _history.put(personId, res.data?.name ?? "-");
        } catch (e) {
          _logger.e("person_cache_put_failed: $e");
        }
      }

      // return response
      return response;
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
