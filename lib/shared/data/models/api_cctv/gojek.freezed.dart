// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gojek.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Gojek {

 String? get driverFlag; String? get createdDate; String? get name; String? get email; GojekPhone? get phone;
/// Create a copy of Gojek
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GojekCopyWith<Gojek> get copyWith => _$GojekCopyWithImpl<Gojek>(this as Gojek, _$identity);

  /// Serializes this Gojek to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Gojek&&(identical(other.driverFlag, driverFlag) || other.driverFlag == driverFlag)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,driverFlag,createdDate,name,email,phone);

@override
String toString() {
  return 'Gojek(driverFlag: $driverFlag, createdDate: $createdDate, name: $name, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $GojekCopyWith<$Res>  {
  factory $GojekCopyWith(Gojek value, $Res Function(Gojek) _then) = _$GojekCopyWithImpl;
@useResult
$Res call({
 String? driverFlag, String? createdDate, String? name, String? email, GojekPhone? phone
});


$GojekPhoneCopyWith<$Res>? get phone;

}
/// @nodoc
class _$GojekCopyWithImpl<$Res>
    implements $GojekCopyWith<$Res> {
  _$GojekCopyWithImpl(this._self, this._then);

  final Gojek _self;
  final $Res Function(Gojek) _then;

/// Create a copy of Gojek
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? driverFlag = freezed,Object? createdDate = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(_self.copyWith(
driverFlag: freezed == driverFlag ? _self.driverFlag : driverFlag // ignore: cast_nullable_to_non_nullable
as String?,createdDate: freezed == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as GojekPhone?,
  ));
}
/// Create a copy of Gojek
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GojekPhoneCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $GojekPhoneCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}
}


/// Adds pattern-matching-related methods to [Gojek].
extension GojekPatterns on Gojek {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Gojek value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Gojek() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Gojek value)  $default,){
final _that = this;
switch (_that) {
case _Gojek():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Gojek value)?  $default,){
final _that = this;
switch (_that) {
case _Gojek() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? driverFlag,  String? createdDate,  String? name,  String? email,  GojekPhone? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Gojek() when $default != null:
return $default(_that.driverFlag,_that.createdDate,_that.name,_that.email,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? driverFlag,  String? createdDate,  String? name,  String? email,  GojekPhone? phone)  $default,) {final _that = this;
switch (_that) {
case _Gojek():
return $default(_that.driverFlag,_that.createdDate,_that.name,_that.email,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? driverFlag,  String? createdDate,  String? name,  String? email,  GojekPhone? phone)?  $default,) {final _that = this;
switch (_that) {
case _Gojek() when $default != null:
return $default(_that.driverFlag,_that.createdDate,_that.name,_that.email,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Gojek implements Gojek {
  const _Gojek({this.driverFlag = null, this.createdDate = null, this.name = null, this.email = null, this.phone = null});
  factory _Gojek.fromJson(Map<String, dynamic> json) => _$GojekFromJson(json);

@override@JsonKey() final  String? driverFlag;
@override@JsonKey() final  String? createdDate;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? email;
@override@JsonKey() final  GojekPhone? phone;

/// Create a copy of Gojek
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GojekCopyWith<_Gojek> get copyWith => __$GojekCopyWithImpl<_Gojek>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GojekToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Gojek&&(identical(other.driverFlag, driverFlag) || other.driverFlag == driverFlag)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,driverFlag,createdDate,name,email,phone);

@override
String toString() {
  return 'Gojek(driverFlag: $driverFlag, createdDate: $createdDate, name: $name, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$GojekCopyWith<$Res> implements $GojekCopyWith<$Res> {
  factory _$GojekCopyWith(_Gojek value, $Res Function(_Gojek) _then) = __$GojekCopyWithImpl;
@override @useResult
$Res call({
 String? driverFlag, String? createdDate, String? name, String? email, GojekPhone? phone
});


@override $GojekPhoneCopyWith<$Res>? get phone;

}
/// @nodoc
class __$GojekCopyWithImpl<$Res>
    implements _$GojekCopyWith<$Res> {
  __$GojekCopyWithImpl(this._self, this._then);

  final _Gojek _self;
  final $Res Function(_Gojek) _then;

/// Create a copy of Gojek
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? driverFlag = freezed,Object? createdDate = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(_Gojek(
driverFlag: freezed == driverFlag ? _self.driverFlag : driverFlag // ignore: cast_nullable_to_non_nullable
as String?,createdDate: freezed == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as GojekPhone?,
  ));
}

/// Create a copy of Gojek
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GojekPhoneCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $GojekPhoneCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}
}

// dart format on
