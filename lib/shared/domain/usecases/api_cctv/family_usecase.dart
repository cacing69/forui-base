import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/caches/api_cctv/t_response_person_list_family_cache.dart';
import 'package:forui_base/shared/data/models/api_cctv/family.dart';
import 'package:forui_base/shared/data/models/api_cctv/family_path_params.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:forui_base/shared/presentation/providers/logger_ref.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'family_usecase.g.dart';

@riverpod
FamilyUsecase familyUsecase(Ref ref) {
  return FamilyUsecase(
    ref.read(apiCctvRepositoryProvider),
    ref.read(loggerRefProvider),
    ref.read(tResponsePersonListFamilyCacheRefProvider),
  );
}

class FamilyUsecase
    implements UseCase<TResponse<List<Family>>, FamilyPathParams> {
  final ApiCctvRepository repository;
  final Logger logger;
  final TResponsePersonListFamilyCache cache;

  FamilyUsecase(this.repository, this.logger, this.cache);

  @override
  Future<Either<Failure, TResponse<List<Family>>>> call(
    FamilyPathParams params,
  ) async {
    try {
      // cek cache
      final cacheData = await cache.get(params.familyCardId!, params.personId!);
      if (cacheData != null) {
        logger.i(
          "person_family_cache_get:${params.familyCardId}_${params.personId}",
        );
        return Right(cacheData);
      }

      // get from repository
      final response = await repository.family(params);

      // save to cache if [2xx]
      if (response.isRight()) {
        final res = response.getOrElse(
          () => throw Exception("Unexpected null"),
        );
        try {
          logger.i(
            "person_family_cache_put:${params.familyCardId}_${params.personId}",
          );

          await cache.put(params.familyCardId!, params.personId!, res);
        } catch (e) {
          logger.e("person_family_cache_put_failed: $e");
        }
      }

      return response;
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
