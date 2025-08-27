// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cctv_screen_filter_widget_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppCctvScreenFilterWidgetState {

 Province? get province; City? get city; District? get district; Village? get village; int? get minAge; int? get maxAge; String? get dateOfBirth; String? get search;
/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppCctvScreenFilterWidgetStateCopyWith<AppCctvScreenFilterWidgetState> get copyWith => _$AppCctvScreenFilterWidgetStateCopyWithImpl<AppCctvScreenFilterWidgetState>(this as AppCctvScreenFilterWidgetState, _$identity);

  /// Serializes this AppCctvScreenFilterWidgetState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppCctvScreenFilterWidgetState&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.village, village) || other.village == village)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.search, search) || other.search == search));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,province,city,district,village,minAge,maxAge,dateOfBirth,search);

@override
String toString() {
  return 'AppCctvScreenFilterWidgetState(province: $province, city: $city, district: $district, village: $village, minAge: $minAge, maxAge: $maxAge, dateOfBirth: $dateOfBirth, search: $search)';
}


}

/// @nodoc
abstract mixin class $AppCctvScreenFilterWidgetStateCopyWith<$Res>  {
  factory $AppCctvScreenFilterWidgetStateCopyWith(AppCctvScreenFilterWidgetState value, $Res Function(AppCctvScreenFilterWidgetState) _then) = _$AppCctvScreenFilterWidgetStateCopyWithImpl;
@useResult
$Res call({
 Province? province, City? city, District? district, Village? village, int? minAge, int? maxAge, String? dateOfBirth, String? search
});


$ProvinceCopyWith<$Res>? get province;$CityCopyWith<$Res>? get city;$DistrictCopyWith<$Res>? get district;$VillageCopyWith<$Res>? get village;

}
/// @nodoc
class _$AppCctvScreenFilterWidgetStateCopyWithImpl<$Res>
    implements $AppCctvScreenFilterWidgetStateCopyWith<$Res> {
  _$AppCctvScreenFilterWidgetStateCopyWithImpl(this._self, this._then);

  final AppCctvScreenFilterWidgetState _self;
  final $Res Function(AppCctvScreenFilterWidgetState) _then;

/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? province = freezed,Object? city = freezed,Object? district = freezed,Object? village = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? dateOfBirth = freezed,Object? search = freezed,}) {
  return _then(_self.copyWith(
province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as Province?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as City?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as District?,village: freezed == village ? _self.village : village // ignore: cast_nullable_to_non_nullable
as Village?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvinceCopyWith<$Res>? get province {
    if (_self.province == null) {
    return null;
  }

  return $ProvinceCopyWith<$Res>(_self.province!, (value) {
    return _then(_self.copyWith(province: value));
  });
}/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get city {
    if (_self.city == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.city!, (value) {
    return _then(_self.copyWith(city: value));
  });
}/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistrictCopyWith<$Res>? get district {
    if (_self.district == null) {
    return null;
  }

  return $DistrictCopyWith<$Res>(_self.district!, (value) {
    return _then(_self.copyWith(district: value));
  });
}/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VillageCopyWith<$Res>? get village {
    if (_self.village == null) {
    return null;
  }

  return $VillageCopyWith<$Res>(_self.village!, (value) {
    return _then(_self.copyWith(village: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppCctvScreenFilterWidgetState].
extension AppCctvScreenFilterWidgetStatePatterns on AppCctvScreenFilterWidgetState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppCctvScreenFilterWidgetState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppCctvScreenFilterWidgetState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppCctvScreenFilterWidgetState value)  $default,){
final _that = this;
switch (_that) {
case _AppCctvScreenFilterWidgetState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppCctvScreenFilterWidgetState value)?  $default,){
final _that = this;
switch (_that) {
case _AppCctvScreenFilterWidgetState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Province? province,  City? city,  District? district,  Village? village,  int? minAge,  int? maxAge,  String? dateOfBirth,  String? search)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppCctvScreenFilterWidgetState() when $default != null:
return $default(_that.province,_that.city,_that.district,_that.village,_that.minAge,_that.maxAge,_that.dateOfBirth,_that.search);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Province? province,  City? city,  District? district,  Village? village,  int? minAge,  int? maxAge,  String? dateOfBirth,  String? search)  $default,) {final _that = this;
switch (_that) {
case _AppCctvScreenFilterWidgetState():
return $default(_that.province,_that.city,_that.district,_that.village,_that.minAge,_that.maxAge,_that.dateOfBirth,_that.search);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Province? province,  City? city,  District? district,  Village? village,  int? minAge,  int? maxAge,  String? dateOfBirth,  String? search)?  $default,) {final _that = this;
switch (_that) {
case _AppCctvScreenFilterWidgetState() when $default != null:
return $default(_that.province,_that.city,_that.district,_that.village,_that.minAge,_that.maxAge,_that.dateOfBirth,_that.search);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppCctvScreenFilterWidgetState implements AppCctvScreenFilterWidgetState {
  const _AppCctvScreenFilterWidgetState({this.province = null, this.city = null, this.district = null, this.village = null, this.minAge = null, this.maxAge = null, this.dateOfBirth = null, this.search = null});
  factory _AppCctvScreenFilterWidgetState.fromJson(Map<String, dynamic> json) => _$AppCctvScreenFilterWidgetStateFromJson(json);

@override@JsonKey() final  Province? province;
@override@JsonKey() final  City? city;
@override@JsonKey() final  District? district;
@override@JsonKey() final  Village? village;
@override@JsonKey() final  int? minAge;
@override@JsonKey() final  int? maxAge;
@override@JsonKey() final  String? dateOfBirth;
@override@JsonKey() final  String? search;

/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppCctvScreenFilterWidgetStateCopyWith<_AppCctvScreenFilterWidgetState> get copyWith => __$AppCctvScreenFilterWidgetStateCopyWithImpl<_AppCctvScreenFilterWidgetState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppCctvScreenFilterWidgetStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppCctvScreenFilterWidgetState&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.village, village) || other.village == village)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.search, search) || other.search == search));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,province,city,district,village,minAge,maxAge,dateOfBirth,search);

@override
String toString() {
  return 'AppCctvScreenFilterWidgetState(province: $province, city: $city, district: $district, village: $village, minAge: $minAge, maxAge: $maxAge, dateOfBirth: $dateOfBirth, search: $search)';
}


}

/// @nodoc
abstract mixin class _$AppCctvScreenFilterWidgetStateCopyWith<$Res> implements $AppCctvScreenFilterWidgetStateCopyWith<$Res> {
  factory _$AppCctvScreenFilterWidgetStateCopyWith(_AppCctvScreenFilterWidgetState value, $Res Function(_AppCctvScreenFilterWidgetState) _then) = __$AppCctvScreenFilterWidgetStateCopyWithImpl;
@override @useResult
$Res call({
 Province? province, City? city, District? district, Village? village, int? minAge, int? maxAge, String? dateOfBirth, String? search
});


@override $ProvinceCopyWith<$Res>? get province;@override $CityCopyWith<$Res>? get city;@override $DistrictCopyWith<$Res>? get district;@override $VillageCopyWith<$Res>? get village;

}
/// @nodoc
class __$AppCctvScreenFilterWidgetStateCopyWithImpl<$Res>
    implements _$AppCctvScreenFilterWidgetStateCopyWith<$Res> {
  __$AppCctvScreenFilterWidgetStateCopyWithImpl(this._self, this._then);

  final _AppCctvScreenFilterWidgetState _self;
  final $Res Function(_AppCctvScreenFilterWidgetState) _then;

/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? province = freezed,Object? city = freezed,Object? district = freezed,Object? village = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? dateOfBirth = freezed,Object? search = freezed,}) {
  return _then(_AppCctvScreenFilterWidgetState(
province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as Province?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as City?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as District?,village: freezed == village ? _self.village : village // ignore: cast_nullable_to_non_nullable
as Village?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvinceCopyWith<$Res>? get province {
    if (_self.province == null) {
    return null;
  }

  return $ProvinceCopyWith<$Res>(_self.province!, (value) {
    return _then(_self.copyWith(province: value));
  });
}/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get city {
    if (_self.city == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.city!, (value) {
    return _then(_self.copyWith(city: value));
  });
}/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistrictCopyWith<$Res>? get district {
    if (_self.district == null) {
    return null;
  }

  return $DistrictCopyWith<$Res>(_self.district!, (value) {
    return _then(_self.copyWith(district: value));
  });
}/// Create a copy of AppCctvScreenFilterWidgetState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VillageCopyWith<$Res>? get village {
    if (_self.village == null) {
    return null;
  }

  return $VillageCopyWith<$Res>(_self.village!, (value) {
    return _then(_self.copyWith(village: value));
  });
}
}

// dart format on
