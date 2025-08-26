// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resident.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Resident {

 String? get placeOfBirth; String? get address; int? get sexId;@BigIntConverter() BigInt? get familyCardId; String? get name; String? get dateOfBirth;@BigIntConverter() BigInt? get id;
/// Create a copy of Resident
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResidentCopyWith<Resident> get copyWith => _$ResidentCopyWithImpl<Resident>(this as Resident, _$identity);

  /// Serializes this Resident to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Resident&&(identical(other.placeOfBirth, placeOfBirth) || other.placeOfBirth == placeOfBirth)&&(identical(other.address, address) || other.address == address)&&(identical(other.sexId, sexId) || other.sexId == sexId)&&(identical(other.familyCardId, familyCardId) || other.familyCardId == familyCardId)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,placeOfBirth,address,sexId,familyCardId,name,dateOfBirth,id);

@override
String toString() {
  return 'Resident(placeOfBirth: $placeOfBirth, address: $address, sexId: $sexId, familyCardId: $familyCardId, name: $name, dateOfBirth: $dateOfBirth, id: $id)';
}


}

/// @nodoc
abstract mixin class $ResidentCopyWith<$Res>  {
  factory $ResidentCopyWith(Resident value, $Res Function(Resident) _then) = _$ResidentCopyWithImpl;
@useResult
$Res call({
 String? placeOfBirth, String? address, int? sexId,@BigIntConverter() BigInt? familyCardId, String? name, String? dateOfBirth,@BigIntConverter() BigInt? id
});




}
/// @nodoc
class _$ResidentCopyWithImpl<$Res>
    implements $ResidentCopyWith<$Res> {
  _$ResidentCopyWithImpl(this._self, this._then);

  final Resident _self;
  final $Res Function(Resident) _then;

/// Create a copy of Resident
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? placeOfBirth = freezed,Object? address = freezed,Object? sexId = freezed,Object? familyCardId = freezed,Object? name = freezed,Object? dateOfBirth = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
placeOfBirth: freezed == placeOfBirth ? _self.placeOfBirth : placeOfBirth // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,sexId: freezed == sexId ? _self.sexId : sexId // ignore: cast_nullable_to_non_nullable
as int?,familyCardId: freezed == familyCardId ? _self.familyCardId : familyCardId // ignore: cast_nullable_to_non_nullable
as BigInt?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}

}


/// Adds pattern-matching-related methods to [Resident].
extension ResidentPatterns on Resident {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Resident value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Resident() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Resident value)  $default,){
final _that = this;
switch (_that) {
case _Resident():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Resident value)?  $default,){
final _that = this;
switch (_that) {
case _Resident() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? placeOfBirth,  String? address,  int? sexId, @BigIntConverter()  BigInt? familyCardId,  String? name,  String? dateOfBirth, @BigIntConverter()  BigInt? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Resident() when $default != null:
return $default(_that.placeOfBirth,_that.address,_that.sexId,_that.familyCardId,_that.name,_that.dateOfBirth,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? placeOfBirth,  String? address,  int? sexId, @BigIntConverter()  BigInt? familyCardId,  String? name,  String? dateOfBirth, @BigIntConverter()  BigInt? id)  $default,) {final _that = this;
switch (_that) {
case _Resident():
return $default(_that.placeOfBirth,_that.address,_that.sexId,_that.familyCardId,_that.name,_that.dateOfBirth,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? placeOfBirth,  String? address,  int? sexId, @BigIntConverter()  BigInt? familyCardId,  String? name,  String? dateOfBirth, @BigIntConverter()  BigInt? id)?  $default,) {final _that = this;
switch (_that) {
case _Resident() when $default != null:
return $default(_that.placeOfBirth,_that.address,_that.sexId,_that.familyCardId,_that.name,_that.dateOfBirth,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Resident implements Resident {
  const _Resident({this.placeOfBirth = null, this.address = null, this.sexId = null, @BigIntConverter() this.familyCardId = null, this.name = null, this.dateOfBirth = null, @BigIntConverter() this.id = null});
  factory _Resident.fromJson(Map<String, dynamic> json) => _$ResidentFromJson(json);

@override@JsonKey() final  String? placeOfBirth;
@override@JsonKey() final  String? address;
@override@JsonKey() final  int? sexId;
@override@JsonKey()@BigIntConverter() final  BigInt? familyCardId;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? dateOfBirth;
@override@JsonKey()@BigIntConverter() final  BigInt? id;

/// Create a copy of Resident
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResidentCopyWith<_Resident> get copyWith => __$ResidentCopyWithImpl<_Resident>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResidentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Resident&&(identical(other.placeOfBirth, placeOfBirth) || other.placeOfBirth == placeOfBirth)&&(identical(other.address, address) || other.address == address)&&(identical(other.sexId, sexId) || other.sexId == sexId)&&(identical(other.familyCardId, familyCardId) || other.familyCardId == familyCardId)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,placeOfBirth,address,sexId,familyCardId,name,dateOfBirth,id);

@override
String toString() {
  return 'Resident(placeOfBirth: $placeOfBirth, address: $address, sexId: $sexId, familyCardId: $familyCardId, name: $name, dateOfBirth: $dateOfBirth, id: $id)';
}


}

/// @nodoc
abstract mixin class _$ResidentCopyWith<$Res> implements $ResidentCopyWith<$Res> {
  factory _$ResidentCopyWith(_Resident value, $Res Function(_Resident) _then) = __$ResidentCopyWithImpl;
@override @useResult
$Res call({
 String? placeOfBirth, String? address, int? sexId,@BigIntConverter() BigInt? familyCardId, String? name, String? dateOfBirth,@BigIntConverter() BigInt? id
});




}
/// @nodoc
class __$ResidentCopyWithImpl<$Res>
    implements _$ResidentCopyWith<$Res> {
  __$ResidentCopyWithImpl(this._self, this._then);

  final _Resident _self;
  final $Res Function(_Resident) _then;

/// Create a copy of Resident
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? placeOfBirth = freezed,Object? address = freezed,Object? sexId = freezed,Object? familyCardId = freezed,Object? name = freezed,Object? dateOfBirth = freezed,Object? id = freezed,}) {
  return _then(_Resident(
placeOfBirth: freezed == placeOfBirth ? _self.placeOfBirth : placeOfBirth // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,sexId: freezed == sexId ? _self.sexId : sexId // ignore: cast_nullable_to_non_nullable
as int?,familyCardId: freezed == familyCardId ? _self.familyCardId : familyCardId // ignore: cast_nullable_to_non_nullable
as BigInt?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}


}

// dart format on
