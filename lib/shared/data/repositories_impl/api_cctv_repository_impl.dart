import 'package:dartz/dartz.dart';
import 'package:forui_base/core/datasources/remote/api_cctv/api_cctv_service.dart';
import 'package:forui_base/core/errors/error_wrapper.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/shared/data/models/api_cctv/city.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/data/models/api_cctv/district.dart';
import 'package:forui_base/shared/data/models/api_cctv/family.dart';
import 'package:forui_base/shared/data/models/api_cctv/family_path_params.dart';
import 'package:forui_base/shared/data/models/api_cctv/gojek.dart';
import 'package:forui_base/shared/data/models/api_cctv/person.dart';
import 'package:forui_base/shared/data/models/api_cctv/phone.dart';
import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/models/api_cctv/vehicle.dart';
import 'package:forui_base/shared/data/models/api_cctv/village.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_cctv_repository_impl.g.dart';

@riverpod
ApiCctvRepository apiCctvRepository(Ref ref) {
  return ApiCctvRepositoryImpl(service: ref.watch(apiCctvServiceProvider));
}

class ApiCctvRepositoryImpl implements ApiCctvRepository {
  final ApiCctvService service;

  ApiCctvRepositoryImpl({required this.service});

  @override
  Future<Either<Failure, TResponse<List<Resident>>>> resident(
    ResidentQuery query,
  ) async {
    try {
      final response = await service.resident(query);
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
  Future<Either<Failure, TResponse<List<Province>>>> province() async {
    try {
      final response = await service.province();
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
  Future<Either<Failure, TResponse<List<City>>>> city(String parentId) async {
    try {
      final response = await service.city(parentId);
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
  Future<Either<Failure, TResponse<List<Company>>>> company(
    String personId,
  ) async {
    try {
      final response = await service.company(personId);
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
  Future<Either<Failure, TResponse<List<District>>>> district(
    String parentId,
  ) async {
    try {
      final response = await service.district(parentId);
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
  Future<Either<Failure, TResponse<List<Family>>>> family(
    FamilyPathParams params,
  ) async {
    try {
      final response = await service.family(params);
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
  Future<Either<Failure, TResponse<List<Gojek>>>> gojek(String personId) async {
    try {
      final response = await service.gojek(personId);
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
  Future<Either<Failure, TResponse<Person>>> person(String personId) async {
    try {
      final response = await service.person(personId);
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
  Future<Either<Failure, TResponse<List<Phone>>>> phone(String personId) async {
    try {
      final response = await service.phone(personId);
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
  Future<Either<Failure, TResponse<List<Vehicle>>>> vehicle(
    String personId,
  ) async {
    try {
      final response = await service.vehicle(personId);
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
  Future<Either<Failure, TResponse<List<Village>>>> village(
    String parentId,
  ) async {
    try {
      final response = await service.village(parentId);
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
