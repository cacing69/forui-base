import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/nominatim/search_response.dart';
import 'package:forui_base/shared/data/repositories_impl/nominatim_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/nominatim_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_location_usecase.g.dart';

@riverpod
SearchLocationUsecase searchLocationUsecase(Ref ref) {
  return SearchLocationUsecase(ref.watch(nominatimRepositoryProvider));
}

class SearchLocationUsecase implements UseCase<List<SearchResponse>, String> {
  final NominatimRepository repository;

  SearchLocationUsecase(this.repository);

  @override
  Future<Either<Failure, List<SearchResponse>>> call(String params) async {
    return await repository.search(params);
  }
}
