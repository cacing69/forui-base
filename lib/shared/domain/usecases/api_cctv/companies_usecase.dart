import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/data/models/api_cctv/company_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'companies_usecase.g.dart';

@riverpod
CompaniesUsecaes companiesUsecaes(Ref ref) {
  return CompaniesUsecaes(ref.watch(apiCctvRepositoryProvider));
}

class CompaniesUsecaes
    implements UseCase<TResponse<List<Company>>, CompanyQuery> {
  final ApiCctvRepository repository;

  CompaniesUsecaes(this.repository);

  @override
  Future<Either<Failure, TResponse<List<Company>>>> call(
    CompanyQuery params,
  ) async {
    return await repository.companies(params);
  }
}
