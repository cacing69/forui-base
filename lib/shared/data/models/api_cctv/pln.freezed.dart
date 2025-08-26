// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pln.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Pln {

 String? get chargeTypeName; String? get address; double? get latitude;@BigIntConverter() BigInt? get kwhNumber; String? get energyTypeName; int? get yearManufacture; String? get phone;@BigIntConverter() BigInt? get meterId;@BigIntConverter() BigInt? get residentId;@BigIntConverter() BigInt? get id; int? get energyValue; String? get email; String? get plantPowerName; double? get longitude;
/// Create a copy of Pln
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlnCopyWith<Pln> get copyWith => _$PlnCopyWithImpl<Pln>(this as Pln, _$identity);

  /// Serializes this Pln to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pln&&(identical(other.chargeTypeName, chargeTypeName) || other.chargeTypeName == chargeTypeName)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.kwhNumber, kwhNumber) || other.kwhNumber == kwhNumber)&&(identical(other.energyTypeName, energyTypeName) || other.energyTypeName == energyTypeName)&&(identical(other.yearManufacture, yearManufacture) || other.yearManufacture == yearManufacture)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.meterId, meterId) || other.meterId == meterId)&&(identical(other.residentId, residentId) || other.residentId == residentId)&&(identical(other.id, id) || other.id == id)&&(identical(other.energyValue, energyValue) || other.energyValue == energyValue)&&(identical(other.email, email) || other.email == email)&&(identical(other.plantPowerName, plantPowerName) || other.plantPowerName == plantPowerName)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chargeTypeName,address,latitude,kwhNumber,energyTypeName,yearManufacture,phone,meterId,residentId,id,energyValue,email,plantPowerName,longitude);

@override
String toString() {
  return 'Pln(chargeTypeName: $chargeTypeName, address: $address, latitude: $latitude, kwhNumber: $kwhNumber, energyTypeName: $energyTypeName, yearManufacture: $yearManufacture, phone: $phone, meterId: $meterId, residentId: $residentId, id: $id, energyValue: $energyValue, email: $email, plantPowerName: $plantPowerName, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $PlnCopyWith<$Res>  {
  factory $PlnCopyWith(Pln value, $Res Function(Pln) _then) = _$PlnCopyWithImpl;
@useResult
$Res call({
 String? chargeTypeName, String? address, double? latitude,@BigIntConverter() BigInt? kwhNumber, String? energyTypeName, int? yearManufacture, String? phone,@BigIntConverter() BigInt? meterId,@BigIntConverter() BigInt? residentId,@BigIntConverter() BigInt? id, int? energyValue, String? email, String? plantPowerName, double? longitude
});




}
/// @nodoc
class _$PlnCopyWithImpl<$Res>
    implements $PlnCopyWith<$Res> {
  _$PlnCopyWithImpl(this._self, this._then);

  final Pln _self;
  final $Res Function(Pln) _then;

/// Create a copy of Pln
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chargeTypeName = freezed,Object? address = freezed,Object? latitude = freezed,Object? kwhNumber = freezed,Object? energyTypeName = freezed,Object? yearManufacture = freezed,Object? phone = freezed,Object? meterId = freezed,Object? residentId = freezed,Object? id = freezed,Object? energyValue = freezed,Object? email = freezed,Object? plantPowerName = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
chargeTypeName: freezed == chargeTypeName ? _self.chargeTypeName : chargeTypeName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,kwhNumber: freezed == kwhNumber ? _self.kwhNumber : kwhNumber // ignore: cast_nullable_to_non_nullable
as BigInt?,energyTypeName: freezed == energyTypeName ? _self.energyTypeName : energyTypeName // ignore: cast_nullable_to_non_nullable
as String?,yearManufacture: freezed == yearManufacture ? _self.yearManufacture : yearManufacture // ignore: cast_nullable_to_non_nullable
as int?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,meterId: freezed == meterId ? _self.meterId : meterId // ignore: cast_nullable_to_non_nullable
as BigInt?,residentId: freezed == residentId ? _self.residentId : residentId // ignore: cast_nullable_to_non_nullable
as BigInt?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BigInt?,energyValue: freezed == energyValue ? _self.energyValue : energyValue // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,plantPowerName: freezed == plantPowerName ? _self.plantPowerName : plantPowerName // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Pln].
extension PlnPatterns on Pln {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pln value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pln() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pln value)  $default,){
final _that = this;
switch (_that) {
case _Pln():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pln value)?  $default,){
final _that = this;
switch (_that) {
case _Pln() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? chargeTypeName,  String? address,  double? latitude, @BigIntConverter()  BigInt? kwhNumber,  String? energyTypeName,  int? yearManufacture,  String? phone, @BigIntConverter()  BigInt? meterId, @BigIntConverter()  BigInt? residentId, @BigIntConverter()  BigInt? id,  int? energyValue,  String? email,  String? plantPowerName,  double? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pln() when $default != null:
return $default(_that.chargeTypeName,_that.address,_that.latitude,_that.kwhNumber,_that.energyTypeName,_that.yearManufacture,_that.phone,_that.meterId,_that.residentId,_that.id,_that.energyValue,_that.email,_that.plantPowerName,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? chargeTypeName,  String? address,  double? latitude, @BigIntConverter()  BigInt? kwhNumber,  String? energyTypeName,  int? yearManufacture,  String? phone, @BigIntConverter()  BigInt? meterId, @BigIntConverter()  BigInt? residentId, @BigIntConverter()  BigInt? id,  int? energyValue,  String? email,  String? plantPowerName,  double? longitude)  $default,) {final _that = this;
switch (_that) {
case _Pln():
return $default(_that.chargeTypeName,_that.address,_that.latitude,_that.kwhNumber,_that.energyTypeName,_that.yearManufacture,_that.phone,_that.meterId,_that.residentId,_that.id,_that.energyValue,_that.email,_that.plantPowerName,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? chargeTypeName,  String? address,  double? latitude, @BigIntConverter()  BigInt? kwhNumber,  String? energyTypeName,  int? yearManufacture,  String? phone, @BigIntConverter()  BigInt? meterId, @BigIntConverter()  BigInt? residentId, @BigIntConverter()  BigInt? id,  int? energyValue,  String? email,  String? plantPowerName,  double? longitude)?  $default,) {final _that = this;
switch (_that) {
case _Pln() when $default != null:
return $default(_that.chargeTypeName,_that.address,_that.latitude,_that.kwhNumber,_that.energyTypeName,_that.yearManufacture,_that.phone,_that.meterId,_that.residentId,_that.id,_that.energyValue,_that.email,_that.plantPowerName,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pln implements Pln {
  const _Pln({this.chargeTypeName = null, this.address = null, this.latitude = null, @BigIntConverter() this.kwhNumber = null, this.energyTypeName = null, this.yearManufacture = null, this.phone = null, @BigIntConverter() this.meterId = null, @BigIntConverter() this.residentId = null, @BigIntConverter() this.id = null, this.energyValue = null, this.email = null, this.plantPowerName = null, this.longitude = null});
  factory _Pln.fromJson(Map<String, dynamic> json) => _$PlnFromJson(json);

@override@JsonKey() final  String? chargeTypeName;
@override@JsonKey() final  String? address;
@override@JsonKey() final  double? latitude;
@override@JsonKey()@BigIntConverter() final  BigInt? kwhNumber;
@override@JsonKey() final  String? energyTypeName;
@override@JsonKey() final  int? yearManufacture;
@override@JsonKey() final  String? phone;
@override@JsonKey()@BigIntConverter() final  BigInt? meterId;
@override@JsonKey()@BigIntConverter() final  BigInt? residentId;
@override@JsonKey()@BigIntConverter() final  BigInt? id;
@override@JsonKey() final  int? energyValue;
@override@JsonKey() final  String? email;
@override@JsonKey() final  String? plantPowerName;
@override@JsonKey() final  double? longitude;

/// Create a copy of Pln
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlnCopyWith<_Pln> get copyWith => __$PlnCopyWithImpl<_Pln>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlnToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pln&&(identical(other.chargeTypeName, chargeTypeName) || other.chargeTypeName == chargeTypeName)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.kwhNumber, kwhNumber) || other.kwhNumber == kwhNumber)&&(identical(other.energyTypeName, energyTypeName) || other.energyTypeName == energyTypeName)&&(identical(other.yearManufacture, yearManufacture) || other.yearManufacture == yearManufacture)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.meterId, meterId) || other.meterId == meterId)&&(identical(other.residentId, residentId) || other.residentId == residentId)&&(identical(other.id, id) || other.id == id)&&(identical(other.energyValue, energyValue) || other.energyValue == energyValue)&&(identical(other.email, email) || other.email == email)&&(identical(other.plantPowerName, plantPowerName) || other.plantPowerName == plantPowerName)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chargeTypeName,address,latitude,kwhNumber,energyTypeName,yearManufacture,phone,meterId,residentId,id,energyValue,email,plantPowerName,longitude);

@override
String toString() {
  return 'Pln(chargeTypeName: $chargeTypeName, address: $address, latitude: $latitude, kwhNumber: $kwhNumber, energyTypeName: $energyTypeName, yearManufacture: $yearManufacture, phone: $phone, meterId: $meterId, residentId: $residentId, id: $id, energyValue: $energyValue, email: $email, plantPowerName: $plantPowerName, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$PlnCopyWith<$Res> implements $PlnCopyWith<$Res> {
  factory _$PlnCopyWith(_Pln value, $Res Function(_Pln) _then) = __$PlnCopyWithImpl;
@override @useResult
$Res call({
 String? chargeTypeName, String? address, double? latitude,@BigIntConverter() BigInt? kwhNumber, String? energyTypeName, int? yearManufacture, String? phone,@BigIntConverter() BigInt? meterId,@BigIntConverter() BigInt? residentId,@BigIntConverter() BigInt? id, int? energyValue, String? email, String? plantPowerName, double? longitude
});




}
/// @nodoc
class __$PlnCopyWithImpl<$Res>
    implements _$PlnCopyWith<$Res> {
  __$PlnCopyWithImpl(this._self, this._then);

  final _Pln _self;
  final $Res Function(_Pln) _then;

/// Create a copy of Pln
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chargeTypeName = freezed,Object? address = freezed,Object? latitude = freezed,Object? kwhNumber = freezed,Object? energyTypeName = freezed,Object? yearManufacture = freezed,Object? phone = freezed,Object? meterId = freezed,Object? residentId = freezed,Object? id = freezed,Object? energyValue = freezed,Object? email = freezed,Object? plantPowerName = freezed,Object? longitude = freezed,}) {
  return _then(_Pln(
chargeTypeName: freezed == chargeTypeName ? _self.chargeTypeName : chargeTypeName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,kwhNumber: freezed == kwhNumber ? _self.kwhNumber : kwhNumber // ignore: cast_nullable_to_non_nullable
as BigInt?,energyTypeName: freezed == energyTypeName ? _self.energyTypeName : energyTypeName // ignore: cast_nullable_to_non_nullable
as String?,yearManufacture: freezed == yearManufacture ? _self.yearManufacture : yearManufacture // ignore: cast_nullable_to_non_nullable
as int?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,meterId: freezed == meterId ? _self.meterId : meterId // ignore: cast_nullable_to_non_nullable
as BigInt?,residentId: freezed == residentId ? _self.residentId : residentId // ignore: cast_nullable_to_non_nullable
as BigInt?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BigInt?,energyValue: freezed == energyValue ? _self.energyValue : energyValue // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,plantPowerName: freezed == plantPowerName ? _self.plantPowerName : plantPowerName // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
