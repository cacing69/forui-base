// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_path_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FamilyPathParams {

@Path("personId") String? get personId;@Path("familyCardId") String? get familyCardId;
/// Create a copy of FamilyPathParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyPathParamsCopyWith<FamilyPathParams> get copyWith => _$FamilyPathParamsCopyWithImpl<FamilyPathParams>(this as FamilyPathParams, _$identity);

  /// Serializes this FamilyPathParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyPathParams&&(identical(other.personId, personId) || other.personId == personId)&&(identical(other.familyCardId, familyCardId) || other.familyCardId == familyCardId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,personId,familyCardId);

@override
String toString() {
  return 'FamilyPathParams(personId: $personId, familyCardId: $familyCardId)';
}


}

/// @nodoc
abstract mixin class $FamilyPathParamsCopyWith<$Res>  {
  factory $FamilyPathParamsCopyWith(FamilyPathParams value, $Res Function(FamilyPathParams) _then) = _$FamilyPathParamsCopyWithImpl;
@useResult
$Res call({
@Path("personId") String? personId,@Path("familyCardId") String? familyCardId
});




}
/// @nodoc
class _$FamilyPathParamsCopyWithImpl<$Res>
    implements $FamilyPathParamsCopyWith<$Res> {
  _$FamilyPathParamsCopyWithImpl(this._self, this._then);

  final FamilyPathParams _self;
  final $Res Function(FamilyPathParams) _then;

/// Create a copy of FamilyPathParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? personId = freezed,Object? familyCardId = freezed,}) {
  return _then(_self.copyWith(
personId: freezed == personId ? _self.personId : personId // ignore: cast_nullable_to_non_nullable
as String?,familyCardId: freezed == familyCardId ? _self.familyCardId : familyCardId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FamilyPathParams].
extension FamilyPathParamsPatterns on FamilyPathParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FamilyPathParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FamilyPathParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FamilyPathParams value)  $default,){
final _that = this;
switch (_that) {
case _FamilyPathParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FamilyPathParams value)?  $default,){
final _that = this;
switch (_that) {
case _FamilyPathParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@Path("personId")  String? personId, @Path("familyCardId")  String? familyCardId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FamilyPathParams() when $default != null:
return $default(_that.personId,_that.familyCardId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@Path("personId")  String? personId, @Path("familyCardId")  String? familyCardId)  $default,) {final _that = this;
switch (_that) {
case _FamilyPathParams():
return $default(_that.personId,_that.familyCardId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@Path("personId")  String? personId, @Path("familyCardId")  String? familyCardId)?  $default,) {final _that = this;
switch (_that) {
case _FamilyPathParams() when $default != null:
return $default(_that.personId,_that.familyCardId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FamilyPathParams implements FamilyPathParams {
  const _FamilyPathParams({@Path("personId") this.personId = "", @Path("familyCardId") this.familyCardId = ""});
  factory _FamilyPathParams.fromJson(Map<String, dynamic> json) => _$FamilyPathParamsFromJson(json);

@override@JsonKey()@Path("personId") final  String? personId;
@override@JsonKey()@Path("familyCardId") final  String? familyCardId;

/// Create a copy of FamilyPathParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FamilyPathParamsCopyWith<_FamilyPathParams> get copyWith => __$FamilyPathParamsCopyWithImpl<_FamilyPathParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FamilyPathParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FamilyPathParams&&(identical(other.personId, personId) || other.personId == personId)&&(identical(other.familyCardId, familyCardId) || other.familyCardId == familyCardId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,personId,familyCardId);

@override
String toString() {
  return 'FamilyPathParams(personId: $personId, familyCardId: $familyCardId)';
}


}

/// @nodoc
abstract mixin class _$FamilyPathParamsCopyWith<$Res> implements $FamilyPathParamsCopyWith<$Res> {
  factory _$FamilyPathParamsCopyWith(_FamilyPathParams value, $Res Function(_FamilyPathParams) _then) = __$FamilyPathParamsCopyWithImpl;
@override @useResult
$Res call({
@Path("personId") String? personId,@Path("familyCardId") String? familyCardId
});




}
/// @nodoc
class __$FamilyPathParamsCopyWithImpl<$Res>
    implements _$FamilyPathParamsCopyWith<$Res> {
  __$FamilyPathParamsCopyWithImpl(this._self, this._then);

  final _FamilyPathParams _self;
  final $Res Function(_FamilyPathParams) _then;

/// Create a copy of FamilyPathParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? personId = freezed,Object? familyCardId = freezed,}) {
  return _then(_FamilyPathParams(
personId: freezed == personId ? _self.personId : personId // ignore: cast_nullable_to_non_nullable
as String?,familyCardId: freezed == familyCardId ? _self.familyCardId : familyCardId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
