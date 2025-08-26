import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.g.dart';
part 'vehicle.freezed.dart';

@freezed
abstract class Vehicle with _$Vehicle {
  const factory Vehicle({
    @Default(null) String? address,
    @Default(null) String? color,
    @Default(null) String? engineNumber,
    @Default(null) String? fuel,
    @Default(null) String? dueDate,
    @Default(null) String? vehicleRegistrationDate,
    @Default(null) int? paymentSamsat,
    @Default(null) String? vehicleCategoryName,
    @Default(null) String? ownerName,
    @Default(null) String? registrationDate,
    @Default(null) String? model,
    @Default(null) String? cylinder,
    @Default(null) String? vin,
    @Default(null) String? id,
    @Default(null) String? brand,
    @Default(null) int? manufacturer,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}
