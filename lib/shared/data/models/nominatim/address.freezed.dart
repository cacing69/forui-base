// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Address {

@JsonKey(name: "ISO3166-2-lvl4") String? get iso31662Lvl4; String? get borough; String? get city; String? get country;@JsonKey(name: "country_code") String? get countryCode; String? get neighbourhood; String? get postcode; String? get road; String? get shop; String? get suburb;
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Address&&(identical(other.iso31662Lvl4, iso31662Lvl4) || other.iso31662Lvl4 == iso31662Lvl4)&&(identical(other.borough, borough) || other.borough == borough)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.neighbourhood, neighbourhood) || other.neighbourhood == neighbourhood)&&(identical(other.postcode, postcode) || other.postcode == postcode)&&(identical(other.road, road) || other.road == road)&&(identical(other.shop, shop) || other.shop == shop)&&(identical(other.suburb, suburb) || other.suburb == suburb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iso31662Lvl4,borough,city,country,countryCode,neighbourhood,postcode,road,shop,suburb);

@override
String toString() {
  return 'Address(iso31662Lvl4: $iso31662Lvl4, borough: $borough, city: $city, country: $country, countryCode: $countryCode, neighbourhood: $neighbourhood, postcode: $postcode, road: $road, shop: $shop, suburb: $suburb)';
}


}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res>  {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) = _$AddressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "ISO3166-2-lvl4") String? iso31662Lvl4, String? borough, String? city, String? country,@JsonKey(name: "country_code") String? countryCode, String? neighbourhood, String? postcode, String? road, String? shop, String? suburb
});




}
/// @nodoc
class _$AddressCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? iso31662Lvl4 = freezed,Object? borough = freezed,Object? city = freezed,Object? country = freezed,Object? countryCode = freezed,Object? neighbourhood = freezed,Object? postcode = freezed,Object? road = freezed,Object? shop = freezed,Object? suburb = freezed,}) {
  return _then(_self.copyWith(
iso31662Lvl4: freezed == iso31662Lvl4 ? _self.iso31662Lvl4 : iso31662Lvl4 // ignore: cast_nullable_to_non_nullable
as String?,borough: freezed == borough ? _self.borough : borough // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,neighbourhood: freezed == neighbourhood ? _self.neighbourhood : neighbourhood // ignore: cast_nullable_to_non_nullable
as String?,postcode: freezed == postcode ? _self.postcode : postcode // ignore: cast_nullable_to_non_nullable
as String?,road: freezed == road ? _self.road : road // ignore: cast_nullable_to_non_nullable
as String?,shop: freezed == shop ? _self.shop : shop // ignore: cast_nullable_to_non_nullable
as String?,suburb: freezed == suburb ? _self.suburb : suburb // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Address value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Address value)  $default,){
final _that = this;
switch (_that) {
case _Address():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Address value)?  $default,){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "ISO3166-2-lvl4")  String? iso31662Lvl4,  String? borough,  String? city,  String? country, @JsonKey(name: "country_code")  String? countryCode,  String? neighbourhood,  String? postcode,  String? road,  String? shop,  String? suburb)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.iso31662Lvl4,_that.borough,_that.city,_that.country,_that.countryCode,_that.neighbourhood,_that.postcode,_that.road,_that.shop,_that.suburb);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "ISO3166-2-lvl4")  String? iso31662Lvl4,  String? borough,  String? city,  String? country, @JsonKey(name: "country_code")  String? countryCode,  String? neighbourhood,  String? postcode,  String? road,  String? shop,  String? suburb)  $default,) {final _that = this;
switch (_that) {
case _Address():
return $default(_that.iso31662Lvl4,_that.borough,_that.city,_that.country,_that.countryCode,_that.neighbourhood,_that.postcode,_that.road,_that.shop,_that.suburb);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "ISO3166-2-lvl4")  String? iso31662Lvl4,  String? borough,  String? city,  String? country, @JsonKey(name: "country_code")  String? countryCode,  String? neighbourhood,  String? postcode,  String? road,  String? shop,  String? suburb)?  $default,) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.iso31662Lvl4,_that.borough,_that.city,_that.country,_that.countryCode,_that.neighbourhood,_that.postcode,_that.road,_that.shop,_that.suburb);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Address implements Address {
  const _Address({@JsonKey(name: "ISO3166-2-lvl4") this.iso31662Lvl4 = null, this.borough = null, this.city = null, this.country = null, @JsonKey(name: "country_code") this.countryCode = null, this.neighbourhood = null, this.postcode = null, this.road = null, this.shop = null, this.suburb = null});
  factory _Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

@override@JsonKey(name: "ISO3166-2-lvl4") final  String? iso31662Lvl4;
@override@JsonKey() final  String? borough;
@override@JsonKey() final  String? city;
@override@JsonKey() final  String? country;
@override@JsonKey(name: "country_code") final  String? countryCode;
@override@JsonKey() final  String? neighbourhood;
@override@JsonKey() final  String? postcode;
@override@JsonKey() final  String? road;
@override@JsonKey() final  String? shop;
@override@JsonKey() final  String? suburb;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressCopyWith<_Address> get copyWith => __$AddressCopyWithImpl<_Address>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Address&&(identical(other.iso31662Lvl4, iso31662Lvl4) || other.iso31662Lvl4 == iso31662Lvl4)&&(identical(other.borough, borough) || other.borough == borough)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.neighbourhood, neighbourhood) || other.neighbourhood == neighbourhood)&&(identical(other.postcode, postcode) || other.postcode == postcode)&&(identical(other.road, road) || other.road == road)&&(identical(other.shop, shop) || other.shop == shop)&&(identical(other.suburb, suburb) || other.suburb == suburb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iso31662Lvl4,borough,city,country,countryCode,neighbourhood,postcode,road,shop,suburb);

@override
String toString() {
  return 'Address(iso31662Lvl4: $iso31662Lvl4, borough: $borough, city: $city, country: $country, countryCode: $countryCode, neighbourhood: $neighbourhood, postcode: $postcode, road: $road, shop: $shop, suburb: $suburb)';
}


}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) = __$AddressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "ISO3166-2-lvl4") String? iso31662Lvl4, String? borough, String? city, String? country,@JsonKey(name: "country_code") String? countryCode, String? neighbourhood, String? postcode, String? road, String? shop, String? suburb
});




}
/// @nodoc
class __$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? iso31662Lvl4 = freezed,Object? borough = freezed,Object? city = freezed,Object? country = freezed,Object? countryCode = freezed,Object? neighbourhood = freezed,Object? postcode = freezed,Object? road = freezed,Object? shop = freezed,Object? suburb = freezed,}) {
  return _then(_Address(
iso31662Lvl4: freezed == iso31662Lvl4 ? _self.iso31662Lvl4 : iso31662Lvl4 // ignore: cast_nullable_to_non_nullable
as String?,borough: freezed == borough ? _self.borough : borough // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,neighbourhood: freezed == neighbourhood ? _self.neighbourhood : neighbourhood // ignore: cast_nullable_to_non_nullable
as String?,postcode: freezed == postcode ? _self.postcode : postcode // ignore: cast_nullable_to_non_nullable
as String?,road: freezed == road ? _self.road : road // ignore: cast_nullable_to_non_nullable
as String?,shop: freezed == shop ? _self.shop : shop // ignore: cast_nullable_to_non_nullable
as String?,suburb: freezed == suburb ? _self.suburb : suburb // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
