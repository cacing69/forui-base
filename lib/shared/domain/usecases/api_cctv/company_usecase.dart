import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_person_list_company_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/logger_ref.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'company_usecase.g.dart';

@riverpod
CompanyUsecase companyUsecase(Ref ref) {
  return CompanyUsecase(
    ref.read(apiCctvRepositoryProvider),
    ref.read(loggerRefProvider),
    ref.read(tResponsePersonListCompanyCacheRefProvider),
  );
}

class CompanyUsecase implements UseCase<TResponse<List<Company>>, String> {
  final ApiCctvRepository repository;
  final Logger logger;
  final TResponsePersonListCompanyCache cache;

  CompanyUsecase(this.repository, this.logger, this.cache);

  @override
  Future<Either<Failure, TResponse<List<Company>>>> call(
    String personId,
  ) async {
    // return await repository.company(params);
    try {
      // cek cache
      final cacheData = await cache.get(personId);
      if (cacheData != null) {
        logger.i("person_company_cache_get:$personId");
        return Right(cacheData);
      }

      // get from repository
      final response = await repository.company(personId);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          logger.i("person_company_cache_put:$personId");

          await cache.put(personId, res);
        } catch (e) {
          logger.e("person_company_cache_put_failed: $e");
        }
      }

      return response;
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
