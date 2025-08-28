// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyQuery {

 String? get start; String? get length; String? get search;
/// Create a copy of CompanyQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyQueryCopyWith<CompanyQuery> get copyWith => _$CompanyQueryCopyWithImpl<CompanyQuery>(this as CompanyQuery, _$identity);

  /// Serializes this CompanyQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyQuery&&(identical(other.start, start) || other.start == start)&&(identical(other.length, length) || other.length == length)&&(identical(other.search, search) || other.search == search));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,length,search);

@override
String toString() {
  return 'CompanyQuery(start: $start, length: $length, search: $search)';
}


}

/// @nodoc
abstract mixin class $CompanyQueryCopyWith<$Res>  {
  factory $CompanyQueryCopyWith(CompanyQuery value, $Res Function(CompanyQuery) _then) = _$CompanyQueryCopyWithImpl;
@useResult
$Res call({
 String? start, String? length, String? search
});




}
/// @nodoc
class _$CompanyQueryCopyWithImpl<$Res>
    implements $CompanyQueryCopyWith<$Res> {
  _$CompanyQueryCopyWithImpl(this._self, this._then);

  final CompanyQuery _self;
  final $Res Function(CompanyQuery) _then;

/// Create a copy of CompanyQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = freezed,Object? length = freezed,Object? search = freezed,}) {
  return _then(_self.copyWith(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyQuery].
extension CompanyQueryPatterns on CompanyQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyQuery value)  $default,){
final _that = this;
switch (_that) {
case _CompanyQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyQuery value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? start,  String? length,  String? search)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyQuery() when $default != null:
return $default(_that.start,_that.length,_that.search);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? start,  String? length,  String? search)  $default,) {final _that = this;
switch (_that) {
case _CompanyQuery():
return $default(_that.start,_that.length,_that.search);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? start,  String? length,  String? search)?  $default,) {final _that = this;
switch (_that) {
case _CompanyQuery() when $default != null:
return $default(_that.start,_that.length,_that.search);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyQuery implements CompanyQuery {
  const _CompanyQuery({this.start = "0", this.length = "5", this.search = ""});
  factory _CompanyQuery.fromJson(Map<String, dynamic> json) => _$CompanyQueryFromJson(json);

@override@JsonKey() final  String? start;
@override@JsonKey() final  String? length;
@override@JsonKey() final  String? search;

/// Create a copy of CompanyQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyQueryCopyWith<_CompanyQuery> get copyWith => __$CompanyQueryCopyWithImpl<_CompanyQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyQuery&&(identical(other.start, start) || other.start == start)&&(identical(other.length, length) || other.length == length)&&(identical(other.search, search) || other.search == search));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,length,search);

@override
String toString() {
  return 'CompanyQuery(start: $start, length: $length, search: $search)';
}


}

/// @nodoc
abstract mixin class _$CompanyQueryCopyWith<$Res> implements $CompanyQueryCopyWith<$Res> {
  factory _$CompanyQueryCopyWith(_CompanyQuery value, $Res Function(_CompanyQuery) _then) = __$CompanyQueryCopyWithImpl;
@override @useResult
$Res call({
 String? start, String? length, String? search
});




}
/// @nodoc
class __$CompanyQueryCopyWithImpl<$Res>
    implements _$CompanyQueryCopyWith<$Res> {
  __$CompanyQueryCopyWithImpl(this._self, this._then);

  final _CompanyQuery _self;
  final $Res Function(_CompanyQuery) _then;

/// Create a copy of CompanyQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = freezed,Object? length = freezed,Object? search = freezed,}) {
  return _then(_CompanyQuery(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
