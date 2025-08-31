import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_list_resident_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/connection_service.dart';
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
    ref.read(connectionServiceProvider.notifier),
  );
}

class ResidentUsecase
    implements UseCase<TResponse<List<Resident>>, ResidentQuery> {
  final ApiCctvRepository _repository;
  final Logger _logger;
  final TResponseListResidentCache _cache;
  final ConnectionService _connection;

  ResidentUsecase(
    this._repository,
    this._logger,
    this._cache,
    this._connection,
  );

  @override
  Future<Either<Failure, TResponse<List<Resident>>>> call(
    ResidentQuery params,
  ) async {
    try {
      // cek cache
      final cacheData = await _cache.get(params);
      if (cacheData != null) {
        _logger.i("list_resident_cache_get:$params");
        _logger.i(
          "list_resident_cache_length:${cacheData.data?.length ?? -999}",
        );
        return Right(cacheData);
      }

      // check internet condition
      final isOnline = await _connection.isOnlineNow();
      _logger.i('connection_state:$isOnline');

      if (!isOnline) {
        _logger.e('connection_failure:$isOnline');
        throw ConnectionFailure(message: "There was no internet connection");
      }

      // get from api
      final response = await _repository.resident(params);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          _logger.i("list_resident_cache_put:$params");

          await _cache.put(params, res);
        } catch (e) {
          _logger.e("list_resident_cache_put_failed: $e");
        }
      }

      return response;
    } catch (e) {
      // return Left(ServerFailure(message: e.toString()));
      rethrow;
      // return Left(ServerFailure(message: e.toString()));
    }
  }
}
