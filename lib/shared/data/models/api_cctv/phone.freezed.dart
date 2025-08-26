// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Phone {

@BigIntConverter() BigInt? get id; String? get registeredDate; String? get providerName;
/// Create a copy of Phone
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneCopyWith<Phone> get copyWith => _$PhoneCopyWithImpl<Phone>(this as Phone, _$identity);

  /// Serializes this Phone to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Phone&&(identical(other.id, id) || other.id == id)&&(identical(other.registeredDate, registeredDate) || other.registeredDate == registeredDate)&&(identical(other.providerName, providerName) || other.providerName == providerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,registeredDate,providerName);

@override
String toString() {
  return 'Phone(id: $id, registeredDate: $registeredDate, providerName: $providerName)';
}


}

/// @nodoc
abstract mixin class $PhoneCopyWith<$Res>  {
  factory $PhoneCopyWith(Phone value, $Res Function(Phone) _then) = _$PhoneCopyWithImpl;
@useResult
$Res call({
@BigIntConverter() BigInt? id, String? registeredDate, String? providerName
});




}
/// @nodoc
class _$PhoneCopyWithImpl<$Res>
    implements $PhoneCopyWith<$Res> {
  _$PhoneCopyWithImpl(this._self, this._then);

  final Phone _self;
  final $Res Function(Phone) _then;

/// Create a copy of Phone
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? registeredDate = freezed,Object? providerName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BigInt?,registeredDate: freezed == registeredDate ? _self.registeredDate : registeredDate // ignore: cast_nullable_to_non_nullable
as String?,providerName: freezed == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Phone].
extension PhonePatterns on Phone {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Phone value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Phone() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Phone value)  $default,){
final _that = this;
switch (_that) {
case _Phone():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Phone value)?  $default,){
final _that = this;
switch (_that) {
case _Phone() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@BigIntConverter()  BigInt? id,  String? registeredDate,  String? providerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Phone() when $default != null:
return $default(_that.id,_that.registeredDate,_that.providerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@BigIntConverter()  BigInt? id,  String? registeredDate,  String? providerName)  $default,) {final _that = this;
switch (_that) {
case _Phone():
return $default(_that.id,_that.registeredDate,_that.providerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@BigIntConverter()  BigInt? id,  String? registeredDate,  String? providerName)?  $default,) {final _that = this;
switch (_that) {
case _Phone() when $default != null:
return $default(_that.id,_that.registeredDate,_that.providerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Phone implements Phone {
  const _Phone({@BigIntConverter() this.id = null, this.registeredDate = null, this.providerName = null});
  factory _Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);

@override@JsonKey()@BigIntConverter() final  BigInt? id;
@override@JsonKey() final  String? registeredDate;
@override@JsonKey() final  String? providerName;

/// Create a copy of Phone
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneCopyWith<_Phone> get copyWith => __$PhoneCopyWithImpl<_Phone>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Phone&&(identical(other.id, id) || other.id == id)&&(identical(other.registeredDate, registeredDate) || other.registeredDate == registeredDate)&&(identical(other.providerName, providerName) || other.providerName == providerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,registeredDate,providerName);

@override
String toString() {
  return 'Phone(id: $id, registeredDate: $registeredDate, providerName: $providerName)';
}


}

/// @nodoc
abstract mixin class _$PhoneCopyWith<$Res> implements $PhoneCopyWith<$Res> {
  factory _$PhoneCopyWith(_Phone value, $Res Function(_Phone) _then) = __$PhoneCopyWithImpl;
@override @useResult
$Res call({
@BigIntConverter() BigInt? id, String? registeredDate, String? providerName
});




}
/// @nodoc
class __$PhoneCopyWithImpl<$Res>
    implements _$PhoneCopyWith<$Res> {
  __$PhoneCopyWithImpl(this._self, this._then);

  final _Phone _self;
  final $Res Function(_Phone) _then;

/// Create a copy of Phone
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? registeredDate = freezed,Object? providerName = freezed,}) {
  return _then(_Phone(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BigInt?,registeredDate: freezed == registeredDate ? _self.registeredDate : registeredDate // ignore: cast_nullable_to_non_nullable
as String?,providerName: freezed == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
