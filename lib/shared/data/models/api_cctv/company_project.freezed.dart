// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyProject {

 String? get name; String? get investment; String? get id; String? get type;
/// Create a copy of CompanyProject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyProjectCopyWith<CompanyProject> get copyWith => _$CompanyProjectCopyWithImpl<CompanyProject>(this as CompanyProject, _$identity);

  /// Serializes this CompanyProject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyProject&&(identical(other.name, name) || other.name == name)&&(identical(other.investment, investment) || other.investment == investment)&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,investment,id,type);

@override
String toString() {
  return 'CompanyProject(name: $name, investment: $investment, id: $id, type: $type)';
}


}

/// @nodoc
abstract mixin class $CompanyProjectCopyWith<$Res>  {
  factory $CompanyProjectCopyWith(CompanyProject value, $Res Function(CompanyProject) _then) = _$CompanyProjectCopyWithImpl;
@useResult
$Res call({
 String? name, String? investment, String? id, String? type
});




}
/// @nodoc
class _$CompanyProjectCopyWithImpl<$Res>
    implements $CompanyProjectCopyWith<$Res> {
  _$CompanyProjectCopyWithImpl(this._self, this._then);

  final CompanyProject _self;
  final $Res Function(CompanyProject) _then;

/// Create a copy of CompanyProject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? investment = freezed,Object? id = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,investment: freezed == investment ? _self.investment : investment // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyProject].
extension CompanyProjectPatterns on CompanyProject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyProject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyProject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyProject value)  $default,){
final _that = this;
switch (_that) {
case _CompanyProject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyProject value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyProject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? investment,  String? id,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyProject() when $default != null:
return $default(_that.name,_that.investment,_that.id,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? investment,  String? id,  String? type)  $default,) {final _that = this;
switch (_that) {
case _CompanyProject():
return $default(_that.name,_that.investment,_that.id,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? investment,  String? id,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _CompanyProject() when $default != null:
return $default(_that.name,_that.investment,_that.id,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyProject implements CompanyProject {
  const _CompanyProject({this.name = null, this.investment = null, this.id = null, this.type = null});
  factory _CompanyProject.fromJson(Map<String, dynamic> json) => _$CompanyProjectFromJson(json);

@override@JsonKey() final  String? name;
@override@JsonKey() final  String? investment;
@override@JsonKey() final  String? id;
@override@JsonKey() final  String? type;

/// Create a copy of CompanyProject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyProjectCopyWith<_CompanyProject> get copyWith => __$CompanyProjectCopyWithImpl<_CompanyProject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyProjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyProject&&(identical(other.name, name) || other.name == name)&&(identical(other.investment, investment) || other.investment == investment)&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,investment,id,type);

@override
String toString() {
  return 'CompanyProject(name: $name, investment: $investment, id: $id, type: $type)';
}


}

/// @nodoc
abstract mixin class _$CompanyProjectCopyWith<$Res> implements $CompanyProjectCopyWith<$Res> {
  factory _$CompanyProjectCopyWith(_CompanyProject value, $Res Function(_CompanyProject) _then) = __$CompanyProjectCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? investment, String? id, String? type
});




}
/// @nodoc
class __$CompanyProjectCopyWithImpl<$Res>
    implements _$CompanyProjectCopyWith<$Res> {
  __$CompanyProjectCopyWithImpl(this._self, this._then);

  final _CompanyProject _self;
  final $Res Function(_CompanyProject) _then;

/// Create a copy of CompanyProject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? investment = freezed,Object? id = freezed,Object? type = freezed,}) {
  return _then(_CompanyProject(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,investment: freezed == investment ? _self.investment : investment // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
