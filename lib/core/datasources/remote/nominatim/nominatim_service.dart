import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui_base/shared/data/models/nominatim/search_response.dart';
import 'package:forui_base/shared/presentation/providers/dio/nominatim_http_client.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nominatim_service.g.dart';

@riverpod
NominatimService nominatimService(Ref ref) {
  return NominatimService(ref.watch(nominatimHttpClientProvider));
}

@RestApi(baseUrl: "https://nominatim.openstreetmap.org")
abstract class NominatimService {
  factory NominatimService(Dio dio, {String baseUrl}) = _NominatimService;

  @GET("/search")
  Future<List<SearchResponse>> search(
    @Query("q") String q, {
    @Query("format") String format = "jsonv2",
    @Query("addressdetails") String addressdetails = "1",
  });

  @GET("/reverse")
  Future<SearchResponse> reverse(
    @Query("lat") String lat,
    @Query("lon") String lon, {
    @Query("format") String format = "jsonv2",
    @Query("addressdetails") String addressdetails = "1",
  });
}
