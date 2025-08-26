// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_checklist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyChecklist {

 String? get permissionType; String? get agency; String? get id; String? get permissionCode; String? get permissionDate; String? get permissionName;
/// Create a copy of CompanyChecklist
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyChecklistCopyWith<CompanyChecklist> get copyWith => _$CompanyChecklistCopyWithImpl<CompanyChecklist>(this as CompanyChecklist, _$identity);

  /// Serializes this CompanyChecklist to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyChecklist&&(identical(other.permissionType, permissionType) || other.permissionType == permissionType)&&(identical(other.agency, agency) || other.agency == agency)&&(identical(other.id, id) || other.id == id)&&(identical(other.permissionCode, permissionCode) || other.permissionCode == permissionCode)&&(identical(other.permissionDate, permissionDate) || other.permissionDate == permissionDate)&&(identical(other.permissionName, permissionName) || other.permissionName == permissionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,permissionType,agency,id,permissionCode,permissionDate,permissionName);

@override
String toString() {
  return 'CompanyChecklist(permissionType: $permissionType, agency: $agency, id: $id, permissionCode: $permissionCode, permissionDate: $permissionDate, permissionName: $permissionName)';
}


}

/// @nodoc
abstract mixin class $CompanyChecklistCopyWith<$Res>  {
  factory $CompanyChecklistCopyWith(CompanyChecklist value, $Res Function(CompanyChecklist) _then) = _$CompanyChecklistCopyWithImpl;
@useResult
$Res call({
 String? permissionType, String? agency, String? id, String? permissionCode, String? permissionDate, String? permissionName
});




}
/// @nodoc
class _$CompanyChecklistCopyWithImpl<$Res>
    implements $CompanyChecklistCopyWith<$Res> {
  _$CompanyChecklistCopyWithImpl(this._self, this._then);

  final CompanyChecklist _self;
  final $Res Function(CompanyChecklist) _then;

/// Create a copy of CompanyChecklist
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permissionType = freezed,Object? agency = freezed,Object? id = freezed,Object? permissionCode = freezed,Object? permissionDate = freezed,Object? permissionName = freezed,}) {
  return _then(_self.copyWith(
permissionType: freezed == permissionType ? _self.permissionType : permissionType // ignore: cast_nullable_to_non_nullable
as String?,agency: freezed == agency ? _self.agency : agency // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,permissionCode: freezed == permissionCode ? _self.permissionCode : permissionCode // ignore: cast_nullable_to_non_nullable
as String?,permissionDate: freezed == permissionDate ? _self.permissionDate : permissionDate // ignore: cast_nullable_to_non_nullable
as String?,permissionName: freezed == permissionName ? _self.permissionName : permissionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyChecklist].
extension CompanyChecklistPatterns on CompanyChecklist {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyChecklist value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyChecklist() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyChecklist value)  $default,){
final _that = this;
switch (_that) {
case _CompanyChecklist():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyChecklist value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyChecklist() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? permissionType,  String? agency,  String? id,  String? permissionCode,  String? permissionDate,  String? permissionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyChecklist() when $default != null:
return $default(_that.permissionType,_that.agency,_that.id,_that.permissionCode,_that.permissionDate,_that.permissionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? permissionType,  String? agency,  String? id,  String? permissionCode,  String? permissionDate,  String? permissionName)  $default,) {final _that = this;
switch (_that) {
case _CompanyChecklist():
return $default(_that.permissionType,_that.agency,_that.id,_that.permissionCode,_that.permissionDate,_that.permissionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? permissionType,  String? agency,  String? id,  String? permissionCode,  String? permissionDate,  String? permissionName)?  $default,) {final _that = this;
switch (_that) {
case _CompanyChecklist() when $default != null:
return $default(_that.permissionType,_that.agency,_that.id,_that.permissionCode,_that.permissionDate,_that.permissionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyChecklist implements CompanyChecklist {
  const _CompanyChecklist({this.permissionType = null, this.agency = null, this.id = null, this.permissionCode = null, this.permissionDate = null, this.permissionName = null});
  factory _CompanyChecklist.fromJson(Map<String, dynamic> json) => _$CompanyChecklistFromJson(json);

@override@JsonKey() final  String? permissionType;
@override@JsonKey() final  String? agency;
@override@JsonKey() final  String? id;
@override@JsonKey() final  String? permissionCode;
@override@JsonKey() final  String? permissionDate;
@override@JsonKey() final  String? permissionName;

/// Create a copy of CompanyChecklist
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyChecklistCopyWith<_CompanyChecklist> get copyWith => __$CompanyChecklistCopyWithImpl<_CompanyChecklist>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyChecklistToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyChecklist&&(identical(other.permissionType, permissionType) || other.permissionType == permissionType)&&(identical(other.agency, agency) || other.agency == agency)&&(identical(other.id, id) || other.id == id)&&(identical(other.permissionCode, permissionCode) || other.permissionCode == permissionCode)&&(identical(other.permissionDate, permissionDate) || other.permissionDate == permissionDate)&&(identical(other.permissionName, permissionName) || other.permissionName == permissionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,permissionType,agency,id,permissionCode,permissionDate,permissionName);

@override
String toString() {
  return 'CompanyChecklist(permissionType: $permissionType, agency: $agency, id: $id, permissionCode: $permissionCode, permissionDate: $permissionDate, permissionName: $permissionName)';
}


}

/// @nodoc
abstract mixin class _$CompanyChecklistCopyWith<$Res> implements $CompanyChecklistCopyWith<$Res> {
  factory _$CompanyChecklistCopyWith(_CompanyChecklist value, $Res Function(_CompanyChecklist) _then) = __$CompanyChecklistCopyWithImpl;
@override @useResult
$Res call({
 String? permissionType, String? agency, String? id, String? permissionCode, String? permissionDate, String? permissionName
});




}
/// @nodoc
class __$CompanyChecklistCopyWithImpl<$Res>
    implements _$CompanyChecklistCopyWith<$Res> {
  __$CompanyChecklistCopyWithImpl(this._self, this._then);

  final _CompanyChecklist _self;
  final $Res Function(_CompanyChecklist) _then;

/// Create a copy of CompanyChecklist
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permissionType = freezed,Object? agency = freezed,Object? id = freezed,Object? permissionCode = freezed,Object? permissionDate = freezed,Object? permissionName = freezed,}) {
  return _then(_CompanyChecklist(
permissionType: freezed == permissionType ? _self.permissionType : permissionType // ignore: cast_nullable_to_non_nullable
as String?,agency: freezed == agency ? _self.agency : agency // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,permissionCode: freezed == permissionCode ? _self.permissionCode : permissionCode // ignore: cast_nullable_to_non_nullable
as String?,permissionDate: freezed == permissionDate ? _self.permissionDate : permissionDate // ignore: cast_nullable_to_non_nullable
as String?,permissionName: freezed == permissionName ? _self.permissionName : permissionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
