import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'company_usecase.g.dart';

@riverpod
CompanyUsecase companyUsecase(Ref ref) {
  return CompanyUsecase(ref.watch(apiCctvRepositoryProvider));
}

class CompanyUsecase implements UseCase<TResponse<List<Company>>, String> {
  final ApiCctvRepository repository;

  CompanyUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<List<Company>>>> call(String params) async {
    return await repository.company(params);
  }
}
