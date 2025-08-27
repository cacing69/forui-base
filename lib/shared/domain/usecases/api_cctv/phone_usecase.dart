import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/phone.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'phone_usecase.g.dart';

@riverpod
PhoneUsecase phoneUsecase(Ref ref) {
  return PhoneUsecase(ref.watch(apiCctvRepositoryProvider));
}

class PhoneUsecase implements UseCase<TResponse<List<Phone>>, String> {
  final ApiCctvRepository repository;

  PhoneUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<List<Phone>>>> call(String params) async {
    return await repository.phone(params);
  }
}
