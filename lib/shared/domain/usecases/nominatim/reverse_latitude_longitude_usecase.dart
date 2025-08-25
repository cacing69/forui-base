import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/nominatim/search_response.dart';
import 'package:forui_base/shared/data/repositories_impl/nominatim_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/nominatim_repositories.dart';
import 'package:latlong2/latlong.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reverse_latitude_longitude_usecase.g.dart';

@riverpod
ReverseLatitudeLongitudeUsecase reverseLatitudeLongitudeUsecase(Ref ref) {
  return ReverseLatitudeLongitudeUsecase(
    ref.watch(nominatimRepositoryProvider),
  );
}

class ReverseLatitudeLongitudeUsecase
    implements UseCase<SearchResponse, LatLng> {
  final NominatimRepository repository;

  ReverseLatitudeLongitudeUsecase(this.repository);

  @override
  Future<Either<Failure, SearchResponse>> call(LatLng params) async {
    return await repository.reverse(
      params.latitude.toString(),
      params.longitude.toString(),
    );
  }
}
