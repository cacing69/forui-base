import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_person_list_phone_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/phone.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/logger_ref.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'phone_usecase.g.dart';

@riverpod
PhoneUsecase phoneUsecase(Ref ref) {
  return PhoneUsecase(
    ref.watch(apiCctvRepositoryProvider),
    ref.watch(loggerRefProvider),
    ref.watch(tResponsePersonListPhoneCacheRefProvider),
  );
}

class PhoneUsecase implements UseCase<TResponse<List<Phone>>, String> {
  final ApiCctvRepository repository;
  final Logger logger;
  final TResponsePersonListPhoneCache cache;

  PhoneUsecase(this.repository, this.logger, this.cache);

  @override
  Future<Either<Failure, TResponse<List<Phone>>>> call(String personId) async {
    try {
      // cek cache
      final cacheData = await cache.get(personId);
      if (cacheData != null) {
        logger.i("person_phone_cache_get:$personId");
        return Right(cacheData);
      }

      // get from repository
      final response = await repository.phone(personId);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          logger.i("person_phone_cache_put:$personId");

          await cache.put(personId, res);
        } catch (e) {
          logger.e("person_phone_cache_put_failed: $e");
        }
      }

      return response;
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
