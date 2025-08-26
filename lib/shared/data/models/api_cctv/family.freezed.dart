// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Family {

 String? get positionName; String? get bloodTypeName; String? get placeOfBirth; int? get positionId; int? get sexId; String? get work; String? get maritalName; String? get educationName; String? get name; String? get dateOfBirth; String? get religionName;@BigIntConverter() BigInt? get id;
/// Create a copy of Family
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyCopyWith<Family> get copyWith => _$FamilyCopyWithImpl<Family>(this as Family, _$identity);

  /// Serializes this Family to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Family&&(identical(other.positionName, positionName) || other.positionName == positionName)&&(identical(other.bloodTypeName, bloodTypeName) || other.bloodTypeName == bloodTypeName)&&(identical(other.placeOfBirth, placeOfBirth) || other.placeOfBirth == placeOfBirth)&&(identical(other.positionId, positionId) || other.positionId == positionId)&&(identical(other.sexId, sexId) || other.sexId == sexId)&&(identical(other.work, work) || other.work == work)&&(identical(other.maritalName, maritalName) || other.maritalName == maritalName)&&(identical(other.educationName, educationName) || other.educationName == educationName)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.religionName, religionName) || other.religionName == religionName)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,positionName,bloodTypeName,placeOfBirth,positionId,sexId,work,maritalName,educationName,name,dateOfBirth,religionName,id);

@override
String toString() {
  return 'Family(positionName: $positionName, bloodTypeName: $bloodTypeName, placeOfBirth: $placeOfBirth, positionId: $positionId, sexId: $sexId, work: $work, maritalName: $maritalName, educationName: $educationName, name: $name, dateOfBirth: $dateOfBirth, religionName: $religionName, id: $id)';
}


}

/// @nodoc
abstract mixin class $FamilyCopyWith<$Res>  {
  factory $FamilyCopyWith(Family value, $Res Function(Family) _then) = _$FamilyCopyWithImpl;
@useResult
$Res call({
 String? positionName, String? bloodTypeName, String? placeOfBirth, int? positionId, int? sexId, String? work, String? maritalName, String? educationName, String? name, String? dateOfBirth, String? religionName,@BigIntConverter() BigInt? id
});




}
/// @nodoc
class _$FamilyCopyWithImpl<$Res>
    implements $FamilyCopyWith<$Res> {
  _$FamilyCopyWithImpl(this._self, this._then);

  final Family _self;
  final $Res Function(Family) _then;

/// Create a copy of Family
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? positionName = freezed,Object? bloodTypeName = freezed,Object? placeOfBirth = freezed,Object? positionId = freezed,Object? sexId = freezed,Object? work = freezed,Object? maritalName = freezed,Object? educationName = freezed,Object? name = freezed,Object? dateOfBirth = freezed,Object? religionName = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
positionName: freezed == positionName ? _self.positionName : positionName // ignore: cast_nullable_to_non_nullable
as String?,bloodTypeName: freezed == bloodTypeName ? _self.bloodTypeName : bloodTypeName // ignore: cast_nullable_to_non_nullable
as String?,placeOfBirth: freezed == placeOfBirth ? _self.placeOfBirth : placeOfBirth // ignore: cast_nullable_to_non_nullable
as String?,positionId: freezed == positionId ? _self.positionId : positionId // ignore: cast_nullable_to_non_nullable
as int?,sexId: freezed == sexId ? _self.sexId : sexId // ignore: cast_nullable_to_non_nullable
as int?,work: freezed == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as String?,maritalName: freezed == maritalName ? _self.maritalName : maritalName // ignore: cast_nullable_to_non_nullable
as String?,educationName: freezed == educationName ? _self.educationName : educationName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,religionName: freezed == religionName ? _self.religionName : religionName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}

}


/// Adds pattern-matching-related methods to [Family].
extension FamilyPatterns on Family {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Family value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Family() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Family value)  $default,){
final _that = this;
switch (_that) {
case _Family():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Family value)?  $default,){
final _that = this;
switch (_that) {
case _Family() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? positionName,  String? bloodTypeName,  String? placeOfBirth,  int? positionId,  int? sexId,  String? work,  String? maritalName,  String? educationName,  String? name,  String? dateOfBirth,  String? religionName, @BigIntConverter()  BigInt? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Family() when $default != null:
return $default(_that.positionName,_that.bloodTypeName,_that.placeOfBirth,_that.positionId,_that.sexId,_that.work,_that.maritalName,_that.educationName,_that.name,_that.dateOfBirth,_that.religionName,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? positionName,  String? bloodTypeName,  String? placeOfBirth,  int? positionId,  int? sexId,  String? work,  String? maritalName,  String? educationName,  String? name,  String? dateOfBirth,  String? religionName, @BigIntConverter()  BigInt? id)  $default,) {final _that = this;
switch (_that) {
case _Family():
return $default(_that.positionName,_that.bloodTypeName,_that.placeOfBirth,_that.positionId,_that.sexId,_that.work,_that.maritalName,_that.educationName,_that.name,_that.dateOfBirth,_that.religionName,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? positionName,  String? bloodTypeName,  String? placeOfBirth,  int? positionId,  int? sexId,  String? work,  String? maritalName,  String? educationName,  String? name,  String? dateOfBirth,  String? religionName, @BigIntConverter()  BigInt? id)?  $default,) {final _that = this;
switch (_that) {
case _Family() when $default != null:
return $default(_that.positionName,_that.bloodTypeName,_that.placeOfBirth,_that.positionId,_that.sexId,_that.work,_that.maritalName,_that.educationName,_that.name,_that.dateOfBirth,_that.religionName,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Family implements Family {
  const _Family({this.positionName = null, this.bloodTypeName = null, this.placeOfBirth = null, this.positionId = null, this.sexId = null, this.work = null, this.maritalName = null, this.educationName = null, this.name = null, this.dateOfBirth = null, this.religionName = null, @BigIntConverter() this.id = null});
  factory _Family.fromJson(Map<String, dynamic> json) => _$FamilyFromJson(json);

@override@JsonKey() final  String? positionName;
@override@JsonKey() final  String? bloodTypeName;
@override@JsonKey() final  String? placeOfBirth;
@override@JsonKey() final  int? positionId;
@override@JsonKey() final  int? sexId;
@override@JsonKey() final  String? work;
@override@JsonKey() final  String? maritalName;
@override@JsonKey() final  String? educationName;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? dateOfBirth;
@override@JsonKey() final  String? religionName;
@override@JsonKey()@BigIntConverter() final  BigInt? id;

/// Create a copy of Family
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FamilyCopyWith<_Family> get copyWith => __$FamilyCopyWithImpl<_Family>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FamilyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Family&&(identical(other.positionName, positionName) || other.positionName == positionName)&&(identical(other.bloodTypeName, bloodTypeName) || other.bloodTypeName == bloodTypeName)&&(identical(other.placeOfBirth, placeOfBirth) || other.placeOfBirth == placeOfBirth)&&(identical(other.positionId, positionId) || other.positionId == positionId)&&(identical(other.sexId, sexId) || other.sexId == sexId)&&(identical(other.work, work) || other.work == work)&&(identical(other.maritalName, maritalName) || other.maritalName == maritalName)&&(identical(other.educationName, educationName) || other.educationName == educationName)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.religionName, religionName) || other.religionName == religionName)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,positionName,bloodTypeName,placeOfBirth,positionId,sexId,work,maritalName,educationName,name,dateOfBirth,religionName,id);

@override
String toString() {
  return 'Family(positionName: $positionName, bloodTypeName: $bloodTypeName, placeOfBirth: $placeOfBirth, positionId: $positionId, sexId: $sexId, work: $work, maritalName: $maritalName, educationName: $educationName, name: $name, dateOfBirth: $dateOfBirth, religionName: $religionName, id: $id)';
}


}

/// @nodoc
abstract mixin class _$FamilyCopyWith<$Res> implements $FamilyCopyWith<$Res> {
  factory _$FamilyCopyWith(_Family value, $Res Function(_Family) _then) = __$FamilyCopyWithImpl;
@override @useResult
$Res call({
 String? positionName, String? bloodTypeName, String? placeOfBirth, int? positionId, int? sexId, String? work, String? maritalName, String? educationName, String? name, String? dateOfBirth, String? religionName,@BigIntConverter() BigInt? id
});




}
/// @nodoc
class __$FamilyCopyWithImpl<$Res>
    implements _$FamilyCopyWith<$Res> {
  __$FamilyCopyWithImpl(this._self, this._then);

  final _Family _self;
  final $Res Function(_Family) _then;

/// Create a copy of Family
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? positionName = freezed,Object? bloodTypeName = freezed,Object? placeOfBirth = freezed,Object? positionId = freezed,Object? sexId = freezed,Object? work = freezed,Object? maritalName = freezed,Object? educationName = freezed,Object? name = freezed,Object? dateOfBirth = freezed,Object? religionName = freezed,Object? id = freezed,}) {
  return _then(_Family(
positionName: freezed == positionName ? _self.positionName : positionName // ignore: cast_nullable_to_non_nullable
as String?,bloodTypeName: freezed == bloodTypeName ? _self.bloodTypeName : bloodTypeName // ignore: cast_nullable_to_non_nullable
as String?,placeOfBirth: freezed == placeOfBirth ? _self.placeOfBirth : placeOfBirth // ignore: cast_nullable_to_non_nullable
as String?,positionId: freezed == positionId ? _self.positionId : positionId // ignore: cast_nullable_to_non_nullable
as int?,sexId: freezed == sexId ? _self.sexId : sexId // ignore: cast_nullable_to_non_nullable
as int?,work: freezed == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as String?,maritalName: freezed == maritalName ? _self.maritalName : maritalName // ignore: cast_nullable_to_non_nullable
as String?,educationName: freezed == educationName ? _self.educationName : educationName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,religionName: freezed == religionName ? _self.religionName : religionName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}


}

// dart format on
