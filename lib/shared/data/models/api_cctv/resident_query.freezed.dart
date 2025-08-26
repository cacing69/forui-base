// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resident_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResidentQuery {

 String? get start; String? get length; String? get search; String? get provinceId; String? get cityId; String? get districtId; String? get villageId; String? get minAge; String? get maxAge; String? get birthDate;
/// Create a copy of ResidentQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResidentQueryCopyWith<ResidentQuery> get copyWith => _$ResidentQueryCopyWithImpl<ResidentQuery>(this as ResidentQuery, _$identity);

  /// Serializes this ResidentQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResidentQuery&&(identical(other.start, start) || other.start == start)&&(identical(other.length, length) || other.length == length)&&(identical(other.search, search) || other.search == search)&&(identical(other.provinceId, provinceId) || other.provinceId == provinceId)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.villageId, villageId) || other.villageId == villageId)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,length,search,provinceId,cityId,districtId,villageId,minAge,maxAge,birthDate);

@override
String toString() {
  return 'ResidentQuery(start: $start, length: $length, search: $search, provinceId: $provinceId, cityId: $cityId, districtId: $districtId, villageId: $villageId, minAge: $minAge, maxAge: $maxAge, birthDate: $birthDate)';
}


}

/// @nodoc
abstract mixin class $ResidentQueryCopyWith<$Res>  {
  factory $ResidentQueryCopyWith(ResidentQuery value, $Res Function(ResidentQuery) _then) = _$ResidentQueryCopyWithImpl;
@useResult
$Res call({
 String? start, String? length, String? search, String? provinceId, String? cityId, String? districtId, String? villageId, String? minAge, String? maxAge, String? birthDate
});




}
/// @nodoc
class _$ResidentQueryCopyWithImpl<$Res>
    implements $ResidentQueryCopyWith<$Res> {
  _$ResidentQueryCopyWithImpl(this._self, this._then);

  final ResidentQuery _self;
  final $Res Function(ResidentQuery) _then;

/// Create a copy of ResidentQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = freezed,Object? length = freezed,Object? search = freezed,Object? provinceId = freezed,Object? cityId = freezed,Object? districtId = freezed,Object? villageId = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? birthDate = freezed,}) {
  return _then(_self.copyWith(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,provinceId: freezed == provinceId ? _self.provinceId : provinceId // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,villageId: freezed == villageId ? _self.villageId : villageId // ignore: cast_nullable_to_non_nullable
as String?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as String?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResidentQuery].
extension ResidentQueryPatterns on ResidentQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResidentQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResidentQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResidentQuery value)  $default,){
final _that = this;
switch (_that) {
case _ResidentQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResidentQuery value)?  $default,){
final _that = this;
switch (_that) {
case _ResidentQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? start,  String? length,  String? search,  String? provinceId,  String? cityId,  String? districtId,  String? villageId,  String? minAge,  String? maxAge,  String? birthDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResidentQuery() when $default != null:
return $default(_that.start,_that.length,_that.search,_that.provinceId,_that.cityId,_that.districtId,_that.villageId,_that.minAge,_that.maxAge,_that.birthDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? start,  String? length,  String? search,  String? provinceId,  String? cityId,  String? districtId,  String? villageId,  String? minAge,  String? maxAge,  String? birthDate)  $default,) {final _that = this;
switch (_that) {
case _ResidentQuery():
return $default(_that.start,_that.length,_that.search,_that.provinceId,_that.cityId,_that.districtId,_that.villageId,_that.minAge,_that.maxAge,_that.birthDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? start,  String? length,  String? search,  String? provinceId,  String? cityId,  String? districtId,  String? villageId,  String? minAge,  String? maxAge,  String? birthDate)?  $default,) {final _that = this;
switch (_that) {
case _ResidentQuery() when $default != null:
return $default(_that.start,_that.length,_that.search,_that.provinceId,_that.cityId,_that.districtId,_that.villageId,_that.minAge,_that.maxAge,_that.birthDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResidentQuery implements ResidentQuery {
  const _ResidentQuery({this.start = "0", this.length = "5", this.search = "", this.provinceId = "0", this.cityId = "0", this.districtId = "0", this.villageId = "0", this.minAge = "0", this.maxAge = "120", this.birthDate = ""});
  factory _ResidentQuery.fromJson(Map<String, dynamic> json) => _$ResidentQueryFromJson(json);

@override@JsonKey() final  String? start;
@override@JsonKey() final  String? length;
@override@JsonKey() final  String? search;
@override@JsonKey() final  String? provinceId;
@override@JsonKey() final  String? cityId;
@override@JsonKey() final  String? districtId;
@override@JsonKey() final  String? villageId;
@override@JsonKey() final  String? minAge;
@override@JsonKey() final  String? maxAge;
@override@JsonKey() final  String? birthDate;

/// Create a copy of ResidentQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResidentQueryCopyWith<_ResidentQuery> get copyWith => __$ResidentQueryCopyWithImpl<_ResidentQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResidentQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResidentQuery&&(identical(other.start, start) || other.start == start)&&(identical(other.length, length) || other.length == length)&&(identical(other.search, search) || other.search == search)&&(identical(other.provinceId, provinceId) || other.provinceId == provinceId)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.villageId, villageId) || other.villageId == villageId)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,length,search,provinceId,cityId,districtId,villageId,minAge,maxAge,birthDate);

@override
String toString() {
  return 'ResidentQuery(start: $start, length: $length, search: $search, provinceId: $provinceId, cityId: $cityId, districtId: $districtId, villageId: $villageId, minAge: $minAge, maxAge: $maxAge, birthDate: $birthDate)';
}


}

/// @nodoc
abstract mixin class _$ResidentQueryCopyWith<$Res> implements $ResidentQueryCopyWith<$Res> {
  factory _$ResidentQueryCopyWith(_ResidentQuery value, $Res Function(_ResidentQuery) _then) = __$ResidentQueryCopyWithImpl;
@override @useResult
$Res call({
 String? start, String? length, String? search, String? provinceId, String? cityId, String? districtId, String? villageId, String? minAge, String? maxAge, String? birthDate
});




}
/// @nodoc
class __$ResidentQueryCopyWithImpl<$Res>
    implements _$ResidentQueryCopyWith<$Res> {
  __$ResidentQueryCopyWithImpl(this._self, this._then);

  final _ResidentQuery _self;
  final $Res Function(_ResidentQuery) _then;

/// Create a copy of ResidentQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = freezed,Object? length = freezed,Object? search = freezed,Object? provinceId = freezed,Object? cityId = freezed,Object? districtId = freezed,Object? villageId = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? birthDate = freezed,}) {
  return _then(_ResidentQuery(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,provinceId: freezed == provinceId ? _self.provinceId : provinceId // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,villageId: freezed == villageId ? _self.villageId : villageId // ignore: cast_nullable_to_non_nullable
as String?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as String?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
