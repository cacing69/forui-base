import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/shared/data/models/nominatim/search_response.dart';
// import 'package:sapa_umkm/core/errors/failure.dart';
// import 'package:sapa_umkm/shared/data/models/nominatim/search_response.dart';

abstract class NominatimRepository {
  Future<Either<Failure, List<SearchResponse>>> search(String q);
  Future<Either<Failure, SearchResponse>> reverse(String lat, String lon);
}
