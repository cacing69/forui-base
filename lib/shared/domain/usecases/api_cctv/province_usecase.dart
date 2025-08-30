import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_list_province_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/logger_ref.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'province_usecase.g.dart';

@riverpod
ProvinceUsecase provinceUsecase(Ref ref) {
  return ProvinceUsecase(
    ref.read(apiCctvRepositoryProvider),
    ref.read(loggerRefProvider),
    ref.read(tResponseListProvinceCacheProvider),
  );
}

class ProvinceUsecase implements UseCase<TResponse<List<Province>>, NoParams> {
  final ApiCctvRepository repository;
  final Logger logger;
  final TResponseListProvinceCache cache;

  ProvinceUsecase(this.repository, this.logger, this.cache);

  @override
  Future<Either<Failure, TResponse<List<Province>>>> call(
    NoParams params,
  ) async {
    // return await repository.province();
    try {
      // cek cache
      final cacheData = await cache.get("no_params");
      if (cacheData != null) {
        logger.i("list_company_cache_get:no_params");
        return Right(cacheData);
      }

      // get from repository
      final response = await repository.province();

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          logger.i("list_company_cache_put:no_params");

          await cache.put("no_params", res);
        } catch (e) {
          logger.e("list_company_cache_put_failed: $e");
        }
      }

      return response;
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
