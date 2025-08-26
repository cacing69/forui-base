// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Vehicle _$VehicleFromJson(Map<String, dynamic> json) => _Vehicle(
  address: json['address'] as String? ?? null,
  color: json['color'] as String? ?? null,
  engineNumber: json['engineNumber'] as String? ?? null,
  fuel: json['fuel'] as String? ?? null,
  dueDate: json['dueDate'] as String? ?? null,
  vehicleRegistrationDate: json['vehicleRegistrationDate'] as String? ?? null,
  paymentSamsat: (json['paymentSamsat'] as num?)?.toInt() ?? null,
  vehicleCategoryName: json['vehicleCategoryName'] as String? ?? null,
  ownerName: json['ownerName'] as String? ?? null,
  registrationDate: json['registrationDate'] as String? ?? null,
  model: json['model'] as String? ?? null,
  cylinder: json['cylinder'] as String? ?? null,
  vin: json['vin'] as String? ?? null,
  id: json['id'] as String? ?? null,
  brand: json['brand'] as String? ?? null,
  manufacturer: (json['manufacturer'] as num?)?.toInt() ?? null,
);

Map<String, dynamic> _$VehicleToJson(_Vehicle instance) => <String, dynamic>{
  'address': instance.address,
  'color': instance.color,
  'engineNumber': instance.engineNumber,
  'fuel': instance.fuel,
  'dueDate': instance.dueDate,
  'vehicleRegistrationDate': instance.vehicleRegistrationDate,
  'paymentSamsat': instance.paymentSamsat,
  'vehicleCategoryName': instance.vehicleCategoryName,
  'ownerName': instance.ownerName,
  'registrationDate': instance.registrationDate,
  'model': instance.model,
  'cylinder': instance.cylinder,
  'vin': instance.vin,
  'id': instance.id,
  'brand': instance.brand,
  'manufacturer': instance.manufacturer,
};
