// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dependency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Dependency {

 IconData? get icon; String? get logo; String? get name; String? get url;
/// Create a copy of Dependency
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DependencyCopyWith<Dependency> get copyWith => _$DependencyCopyWithImpl<Dependency>(this as Dependency, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dependency&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,icon,logo,name,url);

@override
String toString() {
  return 'Dependency(icon: $icon, logo: $logo, name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $DependencyCopyWith<$Res>  {
  factory $DependencyCopyWith(Dependency value, $Res Function(Dependency) _then) = _$DependencyCopyWithImpl;
@useResult
$Res call({
 IconData? icon, String? logo, String? name, String? url
});




}
/// @nodoc
class _$DependencyCopyWithImpl<$Res>
    implements $DependencyCopyWith<$Res> {
  _$DependencyCopyWithImpl(this._self, this._then);

  final Dependency _self;
  final $Res Function(Dependency) _then;

/// Create a copy of Dependency
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = freezed,Object? logo = freezed,Object? name = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Dependency].
extension DependencyPatterns on Dependency {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Dependency value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Dependency() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Dependency value)  $default,){
final _that = this;
switch (_that) {
case _Dependency():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Dependency value)?  $default,){
final _that = this;
switch (_that) {
case _Dependency() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IconData? icon,  String? logo,  String? name,  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Dependency() when $default != null:
return $default(_that.icon,_that.logo,_that.name,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IconData? icon,  String? logo,  String? name,  String? url)  $default,) {final _that = this;
switch (_that) {
case _Dependency():
return $default(_that.icon,_that.logo,_that.name,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IconData? icon,  String? logo,  String? name,  String? url)?  $default,) {final _that = this;
switch (_that) {
case _Dependency() when $default != null:
return $default(_that.icon,_that.logo,_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc


class _Dependency implements Dependency {
  const _Dependency({this.icon = null, this.logo = null, this.name = null, this.url = null});
  

@override@JsonKey() final  IconData? icon;
@override@JsonKey() final  String? logo;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? url;

/// Create a copy of Dependency
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DependencyCopyWith<_Dependency> get copyWith => __$DependencyCopyWithImpl<_Dependency>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dependency&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,icon,logo,name,url);

@override
String toString() {
  return 'Dependency(icon: $icon, logo: $logo, name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$DependencyCopyWith<$Res> implements $DependencyCopyWith<$Res> {
  factory _$DependencyCopyWith(_Dependency value, $Res Function(_Dependency) _then) = __$DependencyCopyWithImpl;
@override @useResult
$Res call({
 IconData? icon, String? logo, String? name, String? url
});




}
/// @nodoc
class __$DependencyCopyWithImpl<$Res>
    implements _$DependencyCopyWith<$Res> {
  __$DependencyCopyWithImpl(this._self, this._then);

  final _Dependency _self;
  final $Res Function(_Dependency) _then;

/// Create a copy of Dependency
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = freezed,Object? logo = freezed,Object? name = freezed,Object? url = freezed,}) {
  return _then(_Dependency(
icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
