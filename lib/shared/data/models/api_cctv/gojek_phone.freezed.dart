// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gojek_phone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GojekPhone {

@JsonKey(name: '\$numberLong') String? get numberLong;
/// Create a copy of GojekPhone
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GojekPhoneCopyWith<GojekPhone> get copyWith => _$GojekPhoneCopyWithImpl<GojekPhone>(this as GojekPhone, _$identity);

  /// Serializes this GojekPhone to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GojekPhone&&(identical(other.numberLong, numberLong) || other.numberLong == numberLong));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,numberLong);

@override
String toString() {
  return 'GojekPhone(numberLong: $numberLong)';
}


}

/// @nodoc
abstract mixin class $GojekPhoneCopyWith<$Res>  {
  factory $GojekPhoneCopyWith(GojekPhone value, $Res Function(GojekPhone) _then) = _$GojekPhoneCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '\$numberLong') String? numberLong
});




}
/// @nodoc
class _$GojekPhoneCopyWithImpl<$Res>
    implements $GojekPhoneCopyWith<$Res> {
  _$GojekPhoneCopyWithImpl(this._self, this._then);

  final GojekPhone _self;
  final $Res Function(GojekPhone) _then;

/// Create a copy of GojekPhone
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? numberLong = freezed,}) {
  return _then(_self.copyWith(
numberLong: freezed == numberLong ? _self.numberLong : numberLong // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GojekPhone].
extension GojekPhonePatterns on GojekPhone {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GojekPhone value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GojekPhone() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GojekPhone value)  $default,){
final _that = this;
switch (_that) {
case _GojekPhone():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GojekPhone value)?  $default,){
final _that = this;
switch (_that) {
case _GojekPhone() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '\$numberLong')  String? numberLong)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GojekPhone() when $default != null:
return $default(_that.numberLong);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '\$numberLong')  String? numberLong)  $default,) {final _that = this;
switch (_that) {
case _GojekPhone():
return $default(_that.numberLong);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '\$numberLong')  String? numberLong)?  $default,) {final _that = this;
switch (_that) {
case _GojekPhone() when $default != null:
return $default(_that.numberLong);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GojekPhone implements GojekPhone {
  const _GojekPhone({@JsonKey(name: '\$numberLong') this.numberLong = null});
  factory _GojekPhone.fromJson(Map<String, dynamic> json) => _$GojekPhoneFromJson(json);

@override@JsonKey(name: '\$numberLong') final  String? numberLong;

/// Create a copy of GojekPhone
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GojekPhoneCopyWith<_GojekPhone> get copyWith => __$GojekPhoneCopyWithImpl<_GojekPhone>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GojekPhoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GojekPhone&&(identical(other.numberLong, numberLong) || other.numberLong == numberLong));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,numberLong);

@override
String toString() {
  return 'GojekPhone(numberLong: $numberLong)';
}


}

/// @nodoc
abstract mixin class _$GojekPhoneCopyWith<$Res> implements $GojekPhoneCopyWith<$Res> {
  factory _$GojekPhoneCopyWith(_GojekPhone value, $Res Function(_GojekPhone) _then) = __$GojekPhoneCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '\$numberLong') String? numberLong
});




}
/// @nodoc
class __$GojekPhoneCopyWithImpl<$Res>
    implements _$GojekPhoneCopyWith<$Res> {
  __$GojekPhoneCopyWithImpl(this._self, this._then);

  final _GojekPhone _self;
  final $Res Function(_GojekPhone) _then;

/// Create a copy of GojekPhone
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? numberLong = freezed,}) {
  return _then(_GojekPhone(
numberLong: freezed == numberLong ? _self.numberLong : numberLong // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
