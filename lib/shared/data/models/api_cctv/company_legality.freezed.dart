// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_legality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyLegality {

 String? get date; String? get address; String? get phone; String? get name; String? get type;
/// Create a copy of CompanyLegality
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyLegalityCopyWith<CompanyLegality> get copyWith => _$CompanyLegalityCopyWithImpl<CompanyLegality>(this as CompanyLegality, _$identity);

  /// Serializes this CompanyLegality to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyLegality&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,address,phone,name,type);

@override
String toString() {
  return 'CompanyLegality(date: $date, address: $address, phone: $phone, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class $CompanyLegalityCopyWith<$Res>  {
  factory $CompanyLegalityCopyWith(CompanyLegality value, $Res Function(CompanyLegality) _then) = _$CompanyLegalityCopyWithImpl;
@useResult
$Res call({
 String? date, String? address, String? phone, String? name, String? type
});




}
/// @nodoc
class _$CompanyLegalityCopyWithImpl<$Res>
    implements $CompanyLegalityCopyWith<$Res> {
  _$CompanyLegalityCopyWithImpl(this._self, this._then);

  final CompanyLegality _self;
  final $Res Function(CompanyLegality) _then;

/// Create a copy of CompanyLegality
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? address = freezed,Object? phone = freezed,Object? name = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyLegality].
extension CompanyLegalityPatterns on CompanyLegality {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyLegality value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyLegality() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyLegality value)  $default,){
final _that = this;
switch (_that) {
case _CompanyLegality():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyLegality value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyLegality() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? date,  String? address,  String? phone,  String? name,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyLegality() when $default != null:
return $default(_that.date,_that.address,_that.phone,_that.name,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? date,  String? address,  String? phone,  String? name,  String? type)  $default,) {final _that = this;
switch (_that) {
case _CompanyLegality():
return $default(_that.date,_that.address,_that.phone,_that.name,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? date,  String? address,  String? phone,  String? name,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _CompanyLegality() when $default != null:
return $default(_that.date,_that.address,_that.phone,_that.name,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyLegality implements CompanyLegality {
  const _CompanyLegality({this.date = null, this.address = null, this.phone = null, this.name = null, this.type = null});
  factory _CompanyLegality.fromJson(Map<String, dynamic> json) => _$CompanyLegalityFromJson(json);

@override@JsonKey() final  String? date;
@override@JsonKey() final  String? address;
@override@JsonKey() final  String? phone;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? type;

/// Create a copy of CompanyLegality
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyLegalityCopyWith<_CompanyLegality> get copyWith => __$CompanyLegalityCopyWithImpl<_CompanyLegality>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyLegalityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyLegality&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,address,phone,name,type);

@override
String toString() {
  return 'CompanyLegality(date: $date, address: $address, phone: $phone, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class _$CompanyLegalityCopyWith<$Res> implements $CompanyLegalityCopyWith<$Res> {
  factory _$CompanyLegalityCopyWith(_CompanyLegality value, $Res Function(_CompanyLegality) _then) = __$CompanyLegalityCopyWithImpl;
@override @useResult
$Res call({
 String? date, String? address, String? phone, String? name, String? type
});




}
/// @nodoc
class __$CompanyLegalityCopyWithImpl<$Res>
    implements _$CompanyLegalityCopyWith<$Res> {
  __$CompanyLegalityCopyWithImpl(this._self, this._then);

  final _CompanyLegality _self;
  final $Res Function(_CompanyLegality) _then;

/// Create a copy of CompanyLegality
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? address = freezed,Object? phone = freezed,Object? name = freezed,Object? type = freezed,}) {
  return _then(_CompanyLegality(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
