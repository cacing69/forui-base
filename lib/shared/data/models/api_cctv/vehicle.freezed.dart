// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Vehicle {

 String? get address; String? get color; String? get engineNumber; String? get fuel; String? get dueDate; String? get vehicleRegistrationDate; int? get paymentSamsat; String? get vehicleCategoryName; String? get ownerName; String? get registrationDate; String? get model; String? get cylinder; String? get vin; String? get id; String? get brand; int? get manufacturer;
/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VehicleCopyWith<Vehicle> get copyWith => _$VehicleCopyWithImpl<Vehicle>(this as Vehicle, _$identity);

  /// Serializes this Vehicle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Vehicle&&(identical(other.address, address) || other.address == address)&&(identical(other.color, color) || other.color == color)&&(identical(other.engineNumber, engineNumber) || other.engineNumber == engineNumber)&&(identical(other.fuel, fuel) || other.fuel == fuel)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.vehicleRegistrationDate, vehicleRegistrationDate) || other.vehicleRegistrationDate == vehicleRegistrationDate)&&(identical(other.paymentSamsat, paymentSamsat) || other.paymentSamsat == paymentSamsat)&&(identical(other.vehicleCategoryName, vehicleCategoryName) || other.vehicleCategoryName == vehicleCategoryName)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.registrationDate, registrationDate) || other.registrationDate == registrationDate)&&(identical(other.model, model) || other.model == model)&&(identical(other.cylinder, cylinder) || other.cylinder == cylinder)&&(identical(other.vin, vin) || other.vin == vin)&&(identical(other.id, id) || other.id == id)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.manufacturer, manufacturer) || other.manufacturer == manufacturer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,color,engineNumber,fuel,dueDate,vehicleRegistrationDate,paymentSamsat,vehicleCategoryName,ownerName,registrationDate,model,cylinder,vin,id,brand,manufacturer);

@override
String toString() {
  return 'Vehicle(address: $address, color: $color, engineNumber: $engineNumber, fuel: $fuel, dueDate: $dueDate, vehicleRegistrationDate: $vehicleRegistrationDate, paymentSamsat: $paymentSamsat, vehicleCategoryName: $vehicleCategoryName, ownerName: $ownerName, registrationDate: $registrationDate, model: $model, cylinder: $cylinder, vin: $vin, id: $id, brand: $brand, manufacturer: $manufacturer)';
}


}

/// @nodoc
abstract mixin class $VehicleCopyWith<$Res>  {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) _then) = _$VehicleCopyWithImpl;
@useResult
$Res call({
 String? address, String? color, String? engineNumber, String? fuel, String? dueDate, String? vehicleRegistrationDate, int? paymentSamsat, String? vehicleCategoryName, String? ownerName, String? registrationDate, String? model, String? cylinder, String? vin, String? id, String? brand, int? manufacturer
});




}
/// @nodoc
class _$VehicleCopyWithImpl<$Res>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._self, this._then);

  final Vehicle _self;
  final $Res Function(Vehicle) _then;

/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = freezed,Object? color = freezed,Object? engineNumber = freezed,Object? fuel = freezed,Object? dueDate = freezed,Object? vehicleRegistrationDate = freezed,Object? paymentSamsat = freezed,Object? vehicleCategoryName = freezed,Object? ownerName = freezed,Object? registrationDate = freezed,Object? model = freezed,Object? cylinder = freezed,Object? vin = freezed,Object? id = freezed,Object? brand = freezed,Object? manufacturer = freezed,}) {
  return _then(_self.copyWith(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,engineNumber: freezed == engineNumber ? _self.engineNumber : engineNumber // ignore: cast_nullable_to_non_nullable
as String?,fuel: freezed == fuel ? _self.fuel : fuel // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,vehicleRegistrationDate: freezed == vehicleRegistrationDate ? _self.vehicleRegistrationDate : vehicleRegistrationDate // ignore: cast_nullable_to_non_nullable
as String?,paymentSamsat: freezed == paymentSamsat ? _self.paymentSamsat : paymentSamsat // ignore: cast_nullable_to_non_nullable
as int?,vehicleCategoryName: freezed == vehicleCategoryName ? _self.vehicleCategoryName : vehicleCategoryName // ignore: cast_nullable_to_non_nullable
as String?,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,registrationDate: freezed == registrationDate ? _self.registrationDate : registrationDate // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,cylinder: freezed == cylinder ? _self.cylinder : cylinder // ignore: cast_nullable_to_non_nullable
as String?,vin: freezed == vin ? _self.vin : vin // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,manufacturer: freezed == manufacturer ? _self.manufacturer : manufacturer // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Vehicle].
extension VehiclePatterns on Vehicle {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Vehicle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Vehicle value)  $default,){
final _that = this;
switch (_that) {
case _Vehicle():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Vehicle value)?  $default,){
final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? address,  String? color,  String? engineNumber,  String? fuel,  String? dueDate,  String? vehicleRegistrationDate,  int? paymentSamsat,  String? vehicleCategoryName,  String? ownerName,  String? registrationDate,  String? model,  String? cylinder,  String? vin,  String? id,  String? brand,  int? manufacturer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
return $default(_that.address,_that.color,_that.engineNumber,_that.fuel,_that.dueDate,_that.vehicleRegistrationDate,_that.paymentSamsat,_that.vehicleCategoryName,_that.ownerName,_that.registrationDate,_that.model,_that.cylinder,_that.vin,_that.id,_that.brand,_that.manufacturer);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? address,  String? color,  String? engineNumber,  String? fuel,  String? dueDate,  String? vehicleRegistrationDate,  int? paymentSamsat,  String? vehicleCategoryName,  String? ownerName,  String? registrationDate,  String? model,  String? cylinder,  String? vin,  String? id,  String? brand,  int? manufacturer)  $default,) {final _that = this;
switch (_that) {
case _Vehicle():
return $default(_that.address,_that.color,_that.engineNumber,_that.fuel,_that.dueDate,_that.vehicleRegistrationDate,_that.paymentSamsat,_that.vehicleCategoryName,_that.ownerName,_that.registrationDate,_that.model,_that.cylinder,_that.vin,_that.id,_that.brand,_that.manufacturer);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? address,  String? color,  String? engineNumber,  String? fuel,  String? dueDate,  String? vehicleRegistrationDate,  int? paymentSamsat,  String? vehicleCategoryName,  String? ownerName,  String? registrationDate,  String? model,  String? cylinder,  String? vin,  String? id,  String? brand,  int? manufacturer)?  $default,) {final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
return $default(_that.address,_that.color,_that.engineNumber,_that.fuel,_that.dueDate,_that.vehicleRegistrationDate,_that.paymentSamsat,_that.vehicleCategoryName,_that.ownerName,_that.registrationDate,_that.model,_that.cylinder,_that.vin,_that.id,_that.brand,_that.manufacturer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Vehicle implements Vehicle {
  const _Vehicle({this.address = null, this.color = null, this.engineNumber = null, this.fuel = null, this.dueDate = null, this.vehicleRegistrationDate = null, this.paymentSamsat = null, this.vehicleCategoryName = null, this.ownerName = null, this.registrationDate = null, this.model = null, this.cylinder = null, this.vin = null, this.id = null, this.brand = null, this.manufacturer = null});
  factory _Vehicle.fromJson(Map<String, dynamic> json) => _$VehicleFromJson(json);

@override@JsonKey() final  String? address;
@override@JsonKey() final  String? color;
@override@JsonKey() final  String? engineNumber;
@override@JsonKey() final  String? fuel;
@override@JsonKey() final  String? dueDate;
@override@JsonKey() final  String? vehicleRegistrationDate;
@override@JsonKey() final  int? paymentSamsat;
@override@JsonKey() final  String? vehicleCategoryName;
@override@JsonKey() final  String? ownerName;
@override@JsonKey() final  String? registrationDate;
@override@JsonKey() final  String? model;
@override@JsonKey() final  String? cylinder;
@override@JsonKey() final  String? vin;
@override@JsonKey() final  String? id;
@override@JsonKey() final  String? brand;
@override@JsonKey() final  int? manufacturer;

/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VehicleCopyWith<_Vehicle> get copyWith => __$VehicleCopyWithImpl<_Vehicle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VehicleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Vehicle&&(identical(other.address, address) || other.address == address)&&(identical(other.color, color) || other.color == color)&&(identical(other.engineNumber, engineNumber) || other.engineNumber == engineNumber)&&(identical(other.fuel, fuel) || other.fuel == fuel)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.vehicleRegistrationDate, vehicleRegistrationDate) || other.vehicleRegistrationDate == vehicleRegistrationDate)&&(identical(other.paymentSamsat, paymentSamsat) || other.paymentSamsat == paymentSamsat)&&(identical(other.vehicleCategoryName, vehicleCategoryName) || other.vehicleCategoryName == vehicleCategoryName)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.registrationDate, registrationDate) || other.registrationDate == registrationDate)&&(identical(other.model, model) || other.model == model)&&(identical(other.cylinder, cylinder) || other.cylinder == cylinder)&&(identical(other.vin, vin) || other.vin == vin)&&(identical(other.id, id) || other.id == id)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.manufacturer, manufacturer) || other.manufacturer == manufacturer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,color,engineNumber,fuel,dueDate,vehicleRegistrationDate,paymentSamsat,vehicleCategoryName,ownerName,registrationDate,model,cylinder,vin,id,brand,manufacturer);

@override
String toString() {
  return 'Vehicle(address: $address, color: $color, engineNumber: $engineNumber, fuel: $fuel, dueDate: $dueDate, vehicleRegistrationDate: $vehicleRegistrationDate, paymentSamsat: $paymentSamsat, vehicleCategoryName: $vehicleCategoryName, ownerName: $ownerName, registrationDate: $registrationDate, model: $model, cylinder: $cylinder, vin: $vin, id: $id, brand: $brand, manufacturer: $manufacturer)';
}


}

/// @nodoc
abstract mixin class _$VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$VehicleCopyWith(_Vehicle value, $Res Function(_Vehicle) _then) = __$VehicleCopyWithImpl;
@override @useResult
$Res call({
 String? address, String? color, String? engineNumber, String? fuel, String? dueDate, String? vehicleRegistrationDate, int? paymentSamsat, String? vehicleCategoryName, String? ownerName, String? registrationDate, String? model, String? cylinder, String? vin, String? id, String? brand, int? manufacturer
});




}
/// @nodoc
class __$VehicleCopyWithImpl<$Res>
    implements _$VehicleCopyWith<$Res> {
  __$VehicleCopyWithImpl(this._self, this._then);

  final _Vehicle _self;
  final $Res Function(_Vehicle) _then;

/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? color = freezed,Object? engineNumber = freezed,Object? fuel = freezed,Object? dueDate = freezed,Object? vehicleRegistrationDate = freezed,Object? paymentSamsat = freezed,Object? vehicleCategoryName = freezed,Object? ownerName = freezed,Object? registrationDate = freezed,Object? model = freezed,Object? cylinder = freezed,Object? vin = freezed,Object? id = freezed,Object? brand = freezed,Object? manufacturer = freezed,}) {
  return _then(_Vehicle(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,engineNumber: freezed == engineNumber ? _self.engineNumber : engineNumber // ignore: cast_nullable_to_non_nullable
as String?,fuel: freezed == fuel ? _self.fuel : fuel // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,vehicleRegistrationDate: freezed == vehicleRegistrationDate ? _self.vehicleRegistrationDate : vehicleRegistrationDate // ignore: cast_nullable_to_non_nullable
as String?,paymentSamsat: freezed == paymentSamsat ? _self.paymentSamsat : paymentSamsat // ignore: cast_nullable_to_non_nullable
as int?,vehicleCategoryName: freezed == vehicleCategoryName ? _self.vehicleCategoryName : vehicleCategoryName // ignore: cast_nullable_to_non_nullable
as String?,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,registrationDate: freezed == registrationDate ? _self.registrationDate : registrationDate // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,cylinder: freezed == cylinder ? _self.cylinder : cylinder // ignore: cast_nullable_to_non_nullable
as String?,vin: freezed == vin ? _self.vin : vin // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,manufacturer: freezed == manufacturer ? _self.manufacturer : manufacturer // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
