import 'package:dio/dio.dart';
import 'package:forui_base/shared/data/models/api_cctv/city.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/data/models/api_cctv/family.dart';
import 'package:forui_base/shared/data/models/api_cctv/district.dart';
import 'package:forui_base/shared/data/models/api_cctv/family_path_params.dart';
import 'package:forui_base/shared/data/models/api_cctv/gojek.dart';
import 'package:forui_base/shared/data/models/api_cctv/person.dart';
import 'package:forui_base/shared/data/models/api_cctv/phone.dart';
import 'package:forui_base/shared/data/models/api_cctv/pln.dart';
import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/models/api_cctv/vehicle.dart';
import 'package:forui_base/shared/data/models/api_cctv/village.dart';
import 'package:forui_base/shared/presentation/providers/dio/api_cctv_http_client.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_cctv_service.g.dart';

@riverpod
ApiCctvService apiCctvService(Ref ref) {
  return ApiCctvService(ref.watch(apiCctvHttpClientProvider));
}

@RestApi()
abstract class ApiCctvService {
  factory ApiCctvService(Dio dio, {String baseUrl}) = _ApiCctvService;

  @GET("/resident.json")
  Future<TResponse<List<Resident>>> resident(@Queries() ResidentQuery params);

  @GET("/{personId}/resident.json")
  Future<TResponse<Person>> person(@Path("personId") String personId);

  @GET("/{personId}/{familyCardId}/family.json")
  Future<TResponse<List<Family>>> family(
    @Path("personId") String personId,
    @Path("familyCardId") String family,
  );

  @GET("/{personIdd}/phone.json")
  Future<TResponse<List<Phone>>> phone(@Path("personId") String personId);

  @GET("/{personIdd}/pln.json")
  Future<TResponse<List<Pln>>> pln(@Path("personId") String personId);

  @GET("/{personIdd}/gojek.json")
  Future<TResponse<List<Gojek>>> gojek(@Path("personId") String personId);

  @GET("/{personIdd}/vehicle.json")
  Future<TResponse<List<Vehicle>>> vehicle(@Path("personId") String personId);

  @GET("/{personIdd}/company.json")
  Future<TResponse<List<Company>>> company(@Path("personId") String personId);

  @GET("/master/province.json")
  Future<TResponse<List<Province>>> province();

  @GET("/master/{parentId}/city.json")
  Future<TResponse<List<City>>> city(@Path("parentId") String parentId);

  @GET("/master/{parentId}/district.json")
  Future<TResponse<List<District>>> district(@Path("parentId") String parentId);

  @GET("/master/{parentId}/village.json")
  Future<TResponse<List<Village>>> village(@Path("parentId") String parentId);
}
