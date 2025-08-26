import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident.dart';
import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';

abstract class ApiCctvRepository {
  Future<Either<Failure, TResponse<List<Resident>>>> resident(
    ResidentQuery query,
  );
}
