import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/person.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'person_usecase.g.dart';

@riverpod
PersonUsecase personUsecase(Ref ref) {
  return PersonUsecase(ref.watch(apiCctvRepositoryProvider));
}

class PersonUsecase implements UseCase<TResponse<Person>, String> {
  final ApiCctvRepository repository;

  PersonUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<Person>>> call(String params) async {
    return await repository.person(params);
  }
}
