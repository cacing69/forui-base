import 'package:dartz/dartz.dart';
import 'package:forui_base/core/datasources/remote/nominatim/nominatim_service.dart';
import 'package:forui_base/core/errors/error_wrapper.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/shared/data/models/nominatim/search_response.dart';
import 'package:forui_base/shared/domain/repositories/nominatim_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nominatim_repository_impl.g.dart';

@riverpod
NominatimRepository nominatimRepository(Ref ref) {
  return NominatimRepositoryImpl(service: ref.watch(nominatimServiceProvider));
}

class NominatimRepositoryImpl implements NominatimRepository {
  final NominatimService service;

  NominatimRepositoryImpl({required this.service});

  @override
  Future<Either<Failure, SearchResponse>> reverse(
    String lat,
    String lon,
  ) async {
    try {
      final response = await service.reverse(lat, lon);
      return Right(response);
    } on Exception catch (e) {
      return Left(errorWrapper(e));
    } catch (e) {
      return Left(
        ServerFailure(message: 'An unexpected error occurred: ${e.toString()}'),
      );
    }
  }

  @override
  Future<Either<Failure, List<SearchResponse>>> search(String q) async {
    try {
      final response = await service.search(q);
      return Right(response);
    } on Exception catch (e) {
      return Left(errorWrapper(e));
    } catch (e) {
      return Left(
        ServerFailure(message: 'An unexpected error occurred: ${e.toString()}'),
      );
    }
  }
}
