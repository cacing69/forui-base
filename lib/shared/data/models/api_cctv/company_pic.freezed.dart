// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_pic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyPic {

 String? get country; String? get address; String? get phone; String? get name; String? get foreignFlag; String? get taxNumber; String? get id; String? get position; String? get email;
/// Create a copy of CompanyPic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyPicCopyWith<CompanyPic> get copyWith => _$CompanyPicCopyWithImpl<CompanyPic>(this as CompanyPic, _$identity);

  /// Serializes this CompanyPic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyPic&&(identical(other.country, country) || other.country == country)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.foreignFlag, foreignFlag) || other.foreignFlag == foreignFlag)&&(identical(other.taxNumber, taxNumber) || other.taxNumber == taxNumber)&&(identical(other.id, id) || other.id == id)&&(identical(other.position, position) || other.position == position)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,address,phone,name,foreignFlag,taxNumber,id,position,email);

@override
String toString() {
  return 'CompanyPic(country: $country, address: $address, phone: $phone, name: $name, foreignFlag: $foreignFlag, taxNumber: $taxNumber, id: $id, position: $position, email: $email)';
}


}

/// @nodoc
abstract mixin class $CompanyPicCopyWith<$Res>  {
  factory $CompanyPicCopyWith(CompanyPic value, $Res Function(CompanyPic) _then) = _$CompanyPicCopyWithImpl;
@useResult
$Res call({
 String? country, String? address, String? phone, String? name, String? foreignFlag, String? taxNumber, String? id, String? position, String? email
});




}
/// @nodoc
class _$CompanyPicCopyWithImpl<$Res>
    implements $CompanyPicCopyWith<$Res> {
  _$CompanyPicCopyWithImpl(this._self, this._then);

  final CompanyPic _self;
  final $Res Function(CompanyPic) _then;

/// Create a copy of CompanyPic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = freezed,Object? address = freezed,Object? phone = freezed,Object? name = freezed,Object? foreignFlag = freezed,Object? taxNumber = freezed,Object? id = freezed,Object? position = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [CompanyPic].
extension CompanyPicPatterns on CompanyPic {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyPic value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyPic() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyPic value)  $default,){
final _that = this;
switch (_that) {
case _CompanyPic():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyPic value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyPic() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? country,  String? address,  String? phone,  String? name,  String? foreignFlag,  String? taxNumber,  String? id,  String? position,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyPic() when $default != null:
return $default(_that.country,_that.address,_that.phone,_that.name,_that.foreignFlag,_that.taxNumber,_that.id,_that.position,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? country,  String? address,  String? phone,  String? name,  String? foreignFlag,  String? taxNumber,  String? id,  String? position,  String? email)  $default,) {final _that = this;
switch (_that) {
case _CompanyPic():
return $default(_that.country,_that.address,_that.phone,_that.name,_that.foreignFlag,_that.taxNumber,_that.id,_that.position,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? country,  String? address,  String? phone,  String? name,  String? foreignFlag,  String? taxNumber,  String? id,  String? position,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _CompanyPic() when $default != null:
return $default(_that.country,_that.address,_that.phone,_that.name,_that.foreignFlag,_that.taxNumber,_that.id,_that.position,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyPic implements CompanyPic {
  const _CompanyPic({this.country = null, this.address = null, this.phone = null, this.name = null, this.foreignFlag = null, this.taxNumber = null, this.id = null, this.position = null, this.email = null});
  factory _CompanyPic.fromJson(Map<String, dynamic> json) => _$CompanyPicFromJson(json);

@override@JsonKey() final  String? country;
@override@JsonKey() final  String? address;
@override@JsonKey() final  String? phone;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? foreignFlag;
@override@JsonKey() final  String? taxNumber;
@override@JsonKey() final  String? id;
@override@JsonKey() final  String? position;
@override@JsonKey() final  String? email;

/// Create a copy of CompanyPic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyPicCopyWith<_CompanyPic> get copyWith => __$CompanyPicCopyWithImpl<_CompanyPic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyPicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyPic&&(identical(other.country, country) || other.country == country)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.foreignFlag, foreignFlag) || other.foreignFlag == foreignFlag)&&(identical(other.taxNumber, taxNumber) || other.taxNumber == taxNumber)&&(identical(other.id, id) || other.id == id)&&(identical(other.position, position) || other.position == position)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,address,phone,name,foreignFlag,taxNumber,id,position,email);

@override
String toString() {
  return 'CompanyPic(country: $country, address: $address, phone: $phone, name: $name, foreignFlag: $foreignFlag, taxNumber: $taxNumber, id: $id, position: $position, email: $email)';
}


}

/// @nodoc
abstract mixin class _$CompanyPicCopyWith<$Res> implements $CompanyPicCopyWith<$Res> {
  factory _$CompanyPicCopyWith(_CompanyPic value, $Res Function(_CompanyPic) _then) = __$CompanyPicCopyWithImpl;
@override @useResult
$Res call({
 String? country, String? address, String? phone, String? name, String? foreignFlag, String? taxNumber, String? id, String? position, String? email
});




}
/// @nodoc
class __$CompanyPicCopyWithImpl<$Res>
    implements _$CompanyPicCopyWith<$Res> {
  __$CompanyPicCopyWithImpl(this._self, this._then);

  final _CompanyPic _self;
  final $Res Function(_CompanyPic) _then;

/// Create a copy of CompanyPic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = freezed,Object? address = freezed,Object? phone = freezed,Object? name = freezed,Object? foreignFlag = freezed,Object? taxNumber = freezed,Object? id = freezed,Object? position = freezed,Object? email = freezed,}) {
  return _then(_CompanyPic(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
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
