import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_list_company_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/data/models/api_cctv/company_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/logger_ref.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'companies_usecase.g.dart';

@riverpod
CompaniesUsecase companiesUsecase(Ref ref) {
  return CompaniesUsecase(
    ref.read(apiCctvRepositoryProvider),
    ref.read(loggerRefProvider),
    ref.read(tResponseListCompanyCacheProvider),
  );
}

class CompaniesUsecase
    implements UseCase<TResponse<List<Company>>, CompanyQuery> {
  final ApiCctvRepository repository;
  final Logger logger;
  final TResponseListCompanyCache cache;

  CompaniesUsecase(this.repository, this.logger, this.cache);

  @override
  Future<Either<Failure, TResponse<List<Company>>>> call(
    CompanyQuery params,
  ) async {
    try {
      // cek cache
      final cacheData = await cache.get(params);
      if (cacheData != null) {
        logger.i("list_company_cache_get:$params");
        return Right(cacheData);
      }

      // get from repository
      final response = await repository.companies(params);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          logger.i("list_company_cache_put:$params");

          await cache.put(params, res);
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
