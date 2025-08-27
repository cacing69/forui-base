import 'package:dartz/dartz.dart';
import 'package:forui_base/core/errors/failure.dart';
import 'package:forui_base/core/utils/usecase.dart';
import 'package:forui_base/shared/data/models/api_cctv/vehicle.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/repositories_impl/api_cctv_repository_impl.dart';
import 'package:forui_base/shared/domain/repositories/api_cctv_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'vehicle_usecase.g.dart';

@riverpod
VehicleUsecase vehicleUsecase(Ref ref) {
  return VehicleUsecase(ref.watch(apiCctvRepositoryProvider));
}

class VehicleUsecase implements UseCase<TResponse<List<Vehicle>>, String> {
  final ApiCctvRepository repository;

  VehicleUsecase(this.repository);

  @override
  Future<Either<Failure, TResponse<List<Vehicle>>>> call(String params) async {
    return await repository.vehicle(params);
  }
}
