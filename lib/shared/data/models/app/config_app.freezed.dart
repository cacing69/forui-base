// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConfigApp {

 FThemeData? get themeData;
/// Create a copy of ConfigApp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfigAppCopyWith<ConfigApp> get copyWith => _$ConfigAppCopyWithImpl<ConfigApp>(this as ConfigApp, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfigApp&&(identical(other.themeData, themeData) || other.themeData == themeData));
}


@override
int get hashCode => Object.hash(runtimeType,themeData);

@override
String toString() {
  return 'ConfigApp(themeData: $themeData)';
}


}

/// @nodoc
abstract mixin class $ConfigAppCopyWith<$Res>  {
  factory $ConfigAppCopyWith(ConfigApp value, $Res Function(ConfigApp) _then) = _$ConfigAppCopyWithImpl;
@useResult
$Res call({
 FThemeData? themeData
});




}
/// @nodoc
class _$ConfigAppCopyWithImpl<$Res>
    implements $ConfigAppCopyWith<$Res> {
  _$ConfigAppCopyWithImpl(this._self, this._then);

  final ConfigApp _self;
  final $Res Function(ConfigApp) _then;

/// Create a copy of ConfigApp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? themeData = freezed,}) {
  return _then(_self.copyWith(
themeData: freezed == themeData ? _self.themeData : themeData // ignore: cast_nullable_to_non_nullable
as FThemeData?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfigApp].
extension ConfigAppPatterns on ConfigApp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfigApp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfigApp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfigApp value)  $default,){
final _that = this;
switch (_that) {
case _ConfigApp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfigApp value)?  $default,){
final _that = this;
switch (_that) {
case _ConfigApp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FThemeData? themeData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfigApp() when $default != null:
return $default(_that.themeData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FThemeData? themeData)  $default,) {final _that = this;
switch (_that) {
case _ConfigApp():
return $default(_that.themeData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FThemeData? themeData)?  $default,) {final _that = this;
switch (_that) {
case _ConfigApp() when $default != null:
return $default(_that.themeData);case _:
  return null;

}
}

}

/// @nodoc


class _ConfigApp implements ConfigApp {
  const _ConfigApp({this.themeData = null});
  

@override@JsonKey() final  FThemeData? themeData;

/// Create a copy of ConfigApp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfigAppCopyWith<_ConfigApp> get copyWith => __$ConfigAppCopyWithImpl<_ConfigApp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfigApp&&(identical(other.themeData, themeData) || other.themeData == themeData));
}


@override
int get hashCode => Object.hash(runtimeType,themeData);

@override
String toString() {
  return 'ConfigApp(themeData: $themeData)';
}


}

/// @nodoc
abstract mixin class _$ConfigAppCopyWith<$Res> implements $ConfigAppCopyWith<$Res> {
  factory _$ConfigAppCopyWith(_ConfigApp value, $Res Function(_ConfigApp) _then) = __$ConfigAppCopyWithImpl;
@override @useResult
$Res call({
 FThemeData? themeData
});




}
/// @nodoc
class __$ConfigAppCopyWithImpl<$Res>
    implements _$ConfigAppCopyWith<$Res> {
  __$ConfigAppCopyWithImpl(this._self, this._then);

  final _ConfigApp _self;
  final $Res Function(_ConfigApp) _then;

/// Create a copy of ConfigApp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themeData = freezed,}) {
  return _then(_ConfigApp(
themeData: freezed == themeData ? _self.themeData : themeData // ignore: cast_nullable_to_non_nullable
as FThemeData?,
  ));
}


}

// dart format on
