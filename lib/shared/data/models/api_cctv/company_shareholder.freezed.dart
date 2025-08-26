// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_shareholder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyShareholder {

 String? get country;@BigIntConverter() BigInt? get capital; String? get address; String? get name; String? get foreignFlag; String? get taxNumber; String? get id; String? get position; String? get email;
/// Create a copy of CompanyShareholder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyShareholderCopyWith<CompanyShareholder> get copyWith => _$CompanyShareholderCopyWithImpl<CompanyShareholder>(this as CompanyShareholder, _$identity);

  /// Serializes this CompanyShareholder to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyShareholder&&(identical(other.country, country) || other.country == country)&&(identical(other.capital, capital) || other.capital == capital)&&(identical(other.address, address) || other.address == address)&&(identical(other.name, name) || other.name == name)&&(identical(other.foreignFlag, foreignFlag) || other.foreignFlag == foreignFlag)&&(identical(other.taxNumber, taxNumber) || other.taxNumber == taxNumber)&&(identical(other.id, id) || other.id == id)&&(identical(other.position, position) || other.position == position)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,capital,address,name,foreignFlag,taxNumber,id,position,email);

@override
String toString() {
  return 'CompanyShareholder(country: $country, capital: $capital, address: $address, name: $name, foreignFlag: $foreignFlag, taxNumber: $taxNumber, id: $id, position: $position, email: $email)';
}


}

/// @nodoc
abstract mixin class $CompanyShareholderCopyWith<$Res>  {
  factory $CompanyShareholderCopyWith(CompanyShareholder value, $Res Function(CompanyShareholder) _then) = _$CompanyShareholderCopyWithImpl;
@useResult
$Res call({
 String? country,@BigIntConverter() BigInt? capital, String? address, String? name, String? foreignFlag, String? taxNumber, String? id, String? position, String? email
});




}
/// @nodoc
class _$CompanyShareholderCopyWithImpl<$Res>
    implements $CompanyShareholderCopyWith<$Res> {
  _$CompanyShareholderCopyWithImpl(this._self, this._then);

  final CompanyShareholder _self;
  final $Res Function(CompanyShareholder) _then;

/// Create a copy of CompanyShareholder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = freezed,Object? capital = freezed,Object? address = freezed,Object? name = freezed,Object? foreignFlag = freezed,Object? taxNumber = freezed,Object? id = freezed,Object? position = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,capital: freezed == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as BigInt?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,foreignFlag: freezed == foreignFlag ? _self.foreignFlag : foreignFlag // ignore: cast_nullable_to_non_nullable
as String?,taxNumber: freezed == taxNumber ? _self.taxNumber : taxNumber // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyShareholder].
extension CompanyShareholderPatterns on CompanyShareholder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyShareholder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyShareholder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyShareholder value)  $default,){
final _that = this;
switch (_that) {
case _CompanyShareholder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyShareholder value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyShareholder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? country, @BigIntConverter()  BigInt? capital,  String? address,  String? name,  String? foreignFlag,  String? taxNumber,  String? id,  String? position,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyShareholder() when $default != null:
return $default(_that.country,_that.capital,_that.address,_that.name,_that.foreignFlag,_that.taxNumber,_that.id,_that.position,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? country, @BigIntConverter()  BigInt? capital,  String? address,  String? name,  String? foreignFlag,  String? taxNumber,  String? id,  String? position,  String? email)  $default,) {final _that = this;
switch (_that) {
case _CompanyShareholder():
return $default(_that.country,_that.capital,_that.address,_that.name,_that.foreignFlag,_that.taxNumber,_that.id,_that.position,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? country, @BigIntConverter()  BigInt? capital,  String? address,  String? name,  String? foreignFlag,  String? taxNumber,  String? id,  String? position,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _CompanyShareholder() when $default != null:
return $default(_that.country,_that.capital,_that.address,_that.name,_that.foreignFlag,_that.taxNumber,_that.id,_that.position,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyShareholder implements CompanyShareholder {
  const _CompanyShareholder({this.country = null, @BigIntConverter() this.capital = null, this.address = null, this.name = null, this.foreignFlag = null, this.taxNumber = null, this.id = null, this.position = null, this.email = null});
  factory _CompanyShareholder.fromJson(Map<String, dynamic> json) => _$CompanyShareholderFromJson(json);

@override@JsonKey() final  String? country;
@override@JsonKey()@BigIntConverter() final  BigInt? capital;
@override@JsonKey() final  String? address;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? foreignFlag;
@override@JsonKey() final  String? taxNumber;
@override@JsonKey() final  String? id;
@override@JsonKey() final  String? position;
@override@JsonKey() final  String? email;

/// Create a copy of CompanyShareholder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyShareholderCopyWith<_CompanyShareholder> get copyWith => __$CompanyShareholderCopyWithImpl<_CompanyShareholder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyShareholderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyShareholder&&(identical(other.country, country) || other.country == country)&&(identical(other.capital, capital) || other.capital == capital)&&(identical(other.address, address) || other.address == address)&&(identical(other.name, name) || other.name == name)&&(identical(other.foreignFlag, foreignFlag) || other.foreignFlag == foreignFlag)&&(identical(other.taxNumber, taxNumber) || other.taxNumber == taxNumber)&&(identical(other.id, id) || other.id == id)&&(identical(other.position, position) || other.position == position)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,capital,address,name,foreignFlag,taxNumber,id,position,email);

@override
String toString() {
  return 'CompanyShareholder(country: $country, capital: $capital, address: $address, name: $name, foreignFlag: $foreignFlag, taxNumber: $taxNumber, id: $id, position: $position, email: $email)';
}


}

/// @nodoc
abstract mixin class _$CompanyShareholderCopyWith<$Res> implements $CompanyShareholderCopyWith<$Res> {
  factory _$CompanyShareholderCopyWith(_CompanyShareholder value, $Res Function(_CompanyShareholder) _then) = __$CompanyShareholderCopyWithImpl;
@override @useResult
$Res call({
 String? country,@BigIntConverter() BigInt? capital, String? address, String? name, String? foreignFlag, String? taxNumber, String? id, String? position, String? email
});




}
/// @nodoc
class __$CompanyShareholderCopyWithImpl<$Res>
    implements _$CompanyShareholderCopyWith<$Res> {
  __$CompanyShareholderCopyWithImpl(this._self, this._then);

  final _CompanyShareholder _self;
  final $Res Function(_CompanyShareholder) _then;

/// Create a copy of CompanyShareholder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = freezed,Object? capital = freezed,Object? address = freezed,Object? name = freezed,Object? foreignFlag = freezed,Object? taxNumber = freezed,Object? id = freezed,Object? position = freezed,Object? email = freezed,}) {
  return _then(_CompanyShareholder(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,capital: freezed == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as BigInt?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,foreignFlag: freezed == foreignFlag ? _self.foreignFlag : foreignFlag // ignore: cast_nullable_to_non_nullable
as String?,taxNumber: freezed == taxNumber ? _self.taxNumber : taxNumber // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
