// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TileData {

 IconData? get icon; String? get title; String? get subtitle; bool? get status;
/// Create a copy of TileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TileDataCopyWith<TileData> get copyWith => _$TileDataCopyWithImpl<TileData>(this as TileData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TileData&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,icon,title,subtitle,status);

@override
String toString() {
  return 'TileData(icon: $icon, title: $title, subtitle: $subtitle, status: $status)';
}


}

/// @nodoc
abstract mixin class $TileDataCopyWith<$Res>  {
  factory $TileDataCopyWith(TileData value, $Res Function(TileData) _then) = _$TileDataCopyWithImpl;
@useResult
$Res call({
 IconData? icon, String? title, String? subtitle, bool? status
});




}
/// @nodoc
class _$TileDataCopyWithImpl<$Res>
    implements $TileDataCopyWith<$Res> {
  _$TileDataCopyWithImpl(this._self, this._then);

  final TileData _self;
  final $Res Function(TileData) _then;

/// Create a copy of TileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = freezed,Object? title = freezed,Object? subtitle = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [TileData].
extension TileDataPatterns on TileData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TileData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TileData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TileData value)  $default,){
final _that = this;
switch (_that) {
case _TileData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TileData value)?  $default,){
final _that = this;
switch (_that) {
case _TileData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IconData? icon,  String? title,  String? subtitle,  bool? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TileData() when $default != null:
return $default(_that.icon,_that.title,_that.subtitle,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IconData? icon,  String? title,  String? subtitle,  bool? status)  $default,) {final _that = this;
switch (_that) {
case _TileData():
return $default(_that.icon,_that.title,_that.subtitle,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IconData? icon,  String? title,  String? subtitle,  bool? status)?  $default,) {final _that = this;
switch (_that) {
case _TileData() when $default != null:
return $default(_that.icon,_that.title,_that.subtitle,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _TileData implements TileData {
  const _TileData({this.icon = null, this.title = null, this.subtitle = null, this.status = null});
  

@override@JsonKey() final  IconData? icon;
@override@JsonKey() final  String? title;
@override@JsonKey() final  String? subtitle;
@override@JsonKey() final  bool? status;

/// Create a copy of TileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TileDataCopyWith<_TileData> get copyWith => __$TileDataCopyWithImpl<_TileData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TileData&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,icon,title,subtitle,status);

@override
String toString() {
  return 'TileData(icon: $icon, title: $title, subtitle: $subtitle, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TileDataCopyWith<$Res> implements $TileDataCopyWith<$Res> {
  factory _$TileDataCopyWith(_TileData value, $Res Function(_TileData) _then) = __$TileDataCopyWithImpl;
@override @useResult
$Res call({
 IconData? icon, String? title, String? subtitle, bool? status
});




}
/// @nodoc
class __$TileDataCopyWithImpl<$Res>
    implements _$TileDataCopyWith<$Res> {
  __$TileDataCopyWithImpl(this._self, this._then);

  final _TileData _self;
  final $Res Function(_TileData) _then;

/// Create a copy of TileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = freezed,Object? title = freezed,Object? subtitle = freezed,Object? status = freezed,}) {
  return _then(_TileData(
icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
