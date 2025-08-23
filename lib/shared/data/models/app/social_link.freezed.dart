// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialLink {

 String? get link; String? get actionLink; String? get name; String? get username;
/// Create a copy of SocialLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialLinkCopyWith<SocialLink> get copyWith => _$SocialLinkCopyWithImpl<SocialLink>(this as SocialLink, _$identity);

  /// Serializes this SocialLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialLink&&(identical(other.link, link) || other.link == link)&&(identical(other.actionLink, actionLink) || other.actionLink == actionLink)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,link,actionLink,name,username);

@override
String toString() {
  return 'SocialLink(link: $link, actionLink: $actionLink, name: $name, username: $username)';
}


}

/// @nodoc
abstract mixin class $SocialLinkCopyWith<$Res>  {
  factory $SocialLinkCopyWith(SocialLink value, $Res Function(SocialLink) _then) = _$SocialLinkCopyWithImpl;
@useResult
$Res call({
 String? link, String? actionLink, String? name, String? username
});




}
/// @nodoc
class _$SocialLinkCopyWithImpl<$Res>
    implements $SocialLinkCopyWith<$Res> {
  _$SocialLinkCopyWithImpl(this._self, this._then);

  final SocialLink _self;
  final $Res Function(SocialLink) _then;

/// Create a copy of SocialLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? link = freezed,Object? actionLink = freezed,Object? name = freezed,Object? username = freezed,}) {
  return _then(_self.copyWith(
link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,actionLink: freezed == actionLink ? _self.actionLink : actionLink // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialLink].
extension SocialLinkPatterns on SocialLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialLink value)  $default,){
final _that = this;
switch (_that) {
case _SocialLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialLink value)?  $default,){
final _that = this;
switch (_that) {
case _SocialLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? link,  String? actionLink,  String? name,  String? username)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialLink() when $default != null:
return $default(_that.link,_that.actionLink,_that.name,_that.username);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? link,  String? actionLink,  String? name,  String? username)  $default,) {final _that = this;
switch (_that) {
case _SocialLink():
return $default(_that.link,_that.actionLink,_that.name,_that.username);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? link,  String? actionLink,  String? name,  String? username)?  $default,) {final _that = this;
switch (_that) {
case _SocialLink() when $default != null:
return $default(_that.link,_that.actionLink,_that.name,_that.username);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialLink implements SocialLink {
  const _SocialLink({this.link = null, this.actionLink = null, this.name = null, this.username = null});
  factory _SocialLink.fromJson(Map<String, dynamic> json) => _$SocialLinkFromJson(json);

@override@JsonKey() final  String? link;
@override@JsonKey() final  String? actionLink;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? username;

/// Create a copy of SocialLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialLinkCopyWith<_SocialLink> get copyWith => __$SocialLinkCopyWithImpl<_SocialLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialLink&&(identical(other.link, link) || other.link == link)&&(identical(other.actionLink, actionLink) || other.actionLink == actionLink)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,link,actionLink,name,username);

@override
String toString() {
  return 'SocialLink(link: $link, actionLink: $actionLink, name: $name, username: $username)';
}


}

/// @nodoc
abstract mixin class _$SocialLinkCopyWith<$Res> implements $SocialLinkCopyWith<$Res> {
  factory _$SocialLinkCopyWith(_SocialLink value, $Res Function(_SocialLink) _then) = __$SocialLinkCopyWithImpl;
@override @useResult
$Res call({
 String? link, String? actionLink, String? name, String? username
});




}
/// @nodoc
class __$SocialLinkCopyWithImpl<$Res>
    implements _$SocialLinkCopyWith<$Res> {
  __$SocialLinkCopyWithImpl(this._self, this._then);

  final _SocialLink _self;
  final $Res Function(_SocialLink) _then;

/// Create a copy of SocialLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? link = freezed,Object? actionLink = freezed,Object? name = freezed,Object? username = freezed,}) {
  return _then(_SocialLink(
link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,actionLink: freezed == actionLink ? _self.actionLink : actionLink // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
