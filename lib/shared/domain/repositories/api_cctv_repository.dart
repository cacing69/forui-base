import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/shared/data/models/api_cctv/city.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/data/models/api_cctv/district.dart';
import 'package:forui_base/shared/data/models/api_cctv/family.dart';
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

abstract class ApiCctvRepository {
  Future<Either<Failure, TResponse<List<Resident>>>> resident(
    ResidentQuery query,
  );

  Future<Either<Failure, TResponse<List<Province>>>> province();
  Future<Either<Failure, TResponse<List<City>>>> city(String parentId);
  Future<Either<Failure, TResponse<List<District>>>> district(String parentId);
  Future<Either<Failure, TResponse<List<Village>>>> village(String parentId);

  Future<Either<Failure, TResponse<Person>>> person(String personId);
  Future<Either<Failure, TResponse<List<Family>>>> family(
    FamilyPathParams params,
  );
  Future<Either<Failure, TResponse<List<Phone>>>> phone(String personId);
  Future<Either<Failure, TResponse<List<Gojek>>>> gojek(String personId);
  Future<Either<Failure, TResponse<List<Pln>>>> pln(String personId);
  Future<Either<Failure, TResponse<List<Vehicle>>>> vehicle(String personId);
  Future<Either<Failure, TResponse<List<Company>>>> company(String personId);
}
