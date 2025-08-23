// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserApp {

 String? get firstName; String? get lastName; String? get avatar; String? get bio; List<SocialLink>? get socialLinks;
/// Create a copy of UserApp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAppCopyWith<UserApp> get copyWith => _$UserAppCopyWithImpl<UserApp>(this as UserApp, _$identity);

  /// Serializes this UserApp to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserApp&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.bio, bio) || other.bio == bio)&&const DeepCollectionEquality().equals(other.socialLinks, socialLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,avatar,bio,const DeepCollectionEquality().hash(socialLinks));

@override
String toString() {
  return 'UserApp(firstName: $firstName, lastName: $lastName, avatar: $avatar, bio: $bio, socialLinks: $socialLinks)';
}


}

/// @nodoc
abstract mixin class $UserAppCopyWith<$Res>  {
  factory $UserAppCopyWith(UserApp value, $Res Function(UserApp) _then) = _$UserAppCopyWithImpl;
@useResult
$Res call({
 String? firstName, String? lastName, String? avatar, String? bio, List<SocialLink>? socialLinks
});




}
/// @nodoc
class _$UserAppCopyWithImpl<$Res>
    implements $UserAppCopyWith<$Res> {
  _$UserAppCopyWithImpl(this._self, this._then);

  final UserApp _self;
  final $Res Function(UserApp) _then;

/// Create a copy of UserApp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? avatar = freezed,Object? bio = freezed,Object? socialLinks = freezed,}) {
  return _then(_self.copyWith(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,socialLinks: freezed == socialLinks ? _self.socialLinks : socialLinks // ignore: cast_nullable_to_non_nullable
as List<SocialLink>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserApp].
extension UserAppPatterns on UserApp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserApp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserApp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserApp value)  $default,){
final _that = this;
switch (_that) {
case _UserApp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserApp value)?  $default,){
final _that = this;
switch (_that) {
case _UserApp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  String? avatar,  String? bio,  List<SocialLink>? socialLinks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserApp() when $default != null:
return $default(_that.firstName,_that.lastName,_that.avatar,_that.bio,_that.socialLinks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  String? avatar,  String? bio,  List<SocialLink>? socialLinks)  $default,) {final _that = this;
switch (_that) {
case _UserApp():
return $default(_that.firstName,_that.lastName,_that.avatar,_that.bio,_that.socialLinks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? firstName,  String? lastName,  String? avatar,  String? bio,  List<SocialLink>? socialLinks)?  $default,) {final _that = this;
switch (_that) {
case _UserApp() when $default != null:
return $default(_that.firstName,_that.lastName,_that.avatar,_that.bio,_that.socialLinks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserApp implements UserApp {
  const _UserApp({this.firstName = null, this.lastName = null, this.avatar = null, this.bio = null, final  List<SocialLink>? socialLinks = null}): _socialLinks = socialLinks;
  factory _UserApp.fromJson(Map<String, dynamic> json) => _$UserAppFromJson(json);

@override@JsonKey() final  String? firstName;
@override@JsonKey() final  String? lastName;
@override@JsonKey() final  String? avatar;
@override@JsonKey() final  String? bio;
 final  List<SocialLink>? _socialLinks;
@override@JsonKey() List<SocialLink>? get socialLinks {
  final value = _socialLinks;
  if (value == null) return null;
  if (_socialLinks is EqualUnmodifiableListView) return _socialLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserApp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAppCopyWith<_UserApp> get copyWith => __$UserAppCopyWithImpl<_UserApp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAppToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserApp&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.bio, bio) || other.bio == bio)&&const DeepCollectionEquality().equals(other._socialLinks, _socialLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,avatar,bio,const DeepCollectionEquality().hash(_socialLinks));

@override
String toString() {
  return 'UserApp(firstName: $firstName, lastName: $lastName, avatar: $avatar, bio: $bio, socialLinks: $socialLinks)';
}


}

/// @nodoc
abstract mixin class _$UserAppCopyWith<$Res> implements $UserAppCopyWith<$Res> {
  factory _$UserAppCopyWith(_UserApp value, $Res Function(_UserApp) _then) = __$UserAppCopyWithImpl;
@override @useResult
$Res call({
 String? firstName, String? lastName, String? avatar, String? bio, List<SocialLink>? socialLinks
});




}
/// @nodoc
class __$UserAppCopyWithImpl<$Res>
    implements _$UserAppCopyWith<$Res> {
  __$UserAppCopyWithImpl(this._self, this._then);

  final _UserApp _self;
  final $Res Function(_UserApp) _then;

/// Create a copy of UserApp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? avatar = freezed,Object? bio = freezed,Object? socialLinks = freezed,}) {
  return _then(_UserApp(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,socialLinks: freezed == socialLinks ? _self._socialLinks : socialLinks // ignore: cast_nullable_to_non_nullable
as List<SocialLink>?,
  ));
}


}

// dart format on
