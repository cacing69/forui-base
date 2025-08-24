// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResponse {

 String? get category; Address? get address;@JsonKey(name: "display_name") String? get displayName; double? get importance; String? get lat; String? get licence; String? get lon; String? get name;@JsonKey(name: "osm_id") int? get osmId;@JsonKey(name: "osm_type") String? get osmType; String? get addresstype; List<String>? get boundingbox;@JsonKey(name: "place_id") int? get osmPlaceId;@JsonKey(name: "place_rank") int? get placeRank; String? get type;
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseCopyWith<SearchResponse> get copyWith => _$SearchResponseCopyWithImpl<SearchResponse>(this as SearchResponse, _$identity);

  /// Serializes this SearchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponse&&(identical(other.category, category) || other.category == category)&&(identical(other.address, address) || other.address == address)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.importance, importance) || other.importance == importance)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.licence, licence) || other.licence == licence)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.name, name) || other.name == name)&&(identical(other.osmId, osmId) || other.osmId == osmId)&&(identical(other.osmType, osmType) || other.osmType == osmType)&&(identical(other.addresstype, addresstype) || other.addresstype == addresstype)&&const DeepCollectionEquality().equals(other.boundingbox, boundingbox)&&(identical(other.osmPlaceId, osmPlaceId) || other.osmPlaceId == osmPlaceId)&&(identical(other.placeRank, placeRank) || other.placeRank == placeRank)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,address,displayName,importance,lat,licence,lon,name,osmId,osmType,addresstype,const DeepCollectionEquality().hash(boundingbox),osmPlaceId,placeRank,type);

@override
String toString() {
  return 'SearchResponse(category: $category, address: $address, displayName: $displayName, importance: $importance, lat: $lat, licence: $licence, lon: $lon, name: $name, osmId: $osmId, osmType: $osmType, addresstype: $addresstype, boundingbox: $boundingbox, osmPlaceId: $osmPlaceId, placeRank: $placeRank, type: $type)';
}


}

/// @nodoc
abstract mixin class $SearchResponseCopyWith<$Res>  {
  factory $SearchResponseCopyWith(SearchResponse value, $Res Function(SearchResponse) _then) = _$SearchResponseCopyWithImpl;
@useResult
$Res call({
 String? category, Address? address,@JsonKey(name: "display_name") String? displayName, double? importance, String? lat, String? licence, String? lon, String? name,@JsonKey(name: "osm_id") int? osmId,@JsonKey(name: "osm_type") String? osmType, String? addresstype, List<String>? boundingbox,@JsonKey(name: "place_id") int? osmPlaceId,@JsonKey(name: "place_rank") int? placeRank, String? type
});


$AddressCopyWith<$Res>? get address;

}
/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._self, this._then);

  final SearchResponse _self;
  final $Res Function(SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = freezed,Object? address = freezed,Object? displayName = freezed,Object? importance = freezed,Object? lat = freezed,Object? licence = freezed,Object? lon = freezed,Object? name = freezed,Object? osmId = freezed,Object? osmType = freezed,Object? addresstype = freezed,Object? boundingbox = freezed,Object? osmPlaceId = freezed,Object? placeRank = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,importance: freezed == importance ? _self.importance : importance // ignore: cast_nullable_to_non_nullable
as double?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,licence: freezed == licence ? _self.licence : licence // ignore: cast_nullable_to_non_nullable
as String?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,osmId: freezed == osmId ? _self.osmId : osmId // ignore: cast_nullable_to_non_nullable
as int?,osmType: freezed == osmType ? _self.osmType : osmType // ignore: cast_nullable_to_non_nullable
as String?,addresstype: freezed == addresstype ? _self.addresstype : addresstype // ignore: cast_nullable_to_non_nullable
as String?,boundingbox: freezed == boundingbox ? _self.boundingbox : boundingbox // ignore: cast_nullable_to_non_nullable
as List<String>?,osmPlaceId: freezed == osmPlaceId ? _self.osmPlaceId : osmPlaceId // ignore: cast_nullable_to_non_nullable
as int?,placeRank: freezed == placeRank ? _self.placeRank : placeRank // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchResponse].
extension SearchResponsePatterns on SearchResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResponse value)  $default,){
final _that = this;
switch (_that) {
case _SearchResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? category,  Address? address, @JsonKey(name: "display_name")  String? displayName,  double? importance,  String? lat,  String? licence,  String? lon,  String? name, @JsonKey(name: "osm_id")  int? osmId, @JsonKey(name: "osm_type")  String? osmType,  String? addresstype,  List<String>? boundingbox, @JsonKey(name: "place_id")  int? osmPlaceId, @JsonKey(name: "place_rank")  int? placeRank,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
return $default(_that.category,_that.address,_that.displayName,_that.importance,_that.lat,_that.licence,_that.lon,_that.name,_that.osmId,_that.osmType,_that.addresstype,_that.boundingbox,_that.osmPlaceId,_that.placeRank,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? category,  Address? address, @JsonKey(name: "display_name")  String? displayName,  double? importance,  String? lat,  String? licence,  String? lon,  String? name, @JsonKey(name: "osm_id")  int? osmId, @JsonKey(name: "osm_type")  String? osmType,  String? addresstype,  List<String>? boundingbox, @JsonKey(name: "place_id")  int? osmPlaceId, @JsonKey(name: "place_rank")  int? placeRank,  String? type)  $default,) {final _that = this;
switch (_that) {
case _SearchResponse():
return $default(_that.category,_that.address,_that.displayName,_that.importance,_that.lat,_that.licence,_that.lon,_that.name,_that.osmId,_that.osmType,_that.addresstype,_that.boundingbox,_that.osmPlaceId,_that.placeRank,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? category,  Address? address, @JsonKey(name: "display_name")  String? displayName,  double? importance,  String? lat,  String? licence,  String? lon,  String? name, @JsonKey(name: "osm_id")  int? osmId, @JsonKey(name: "osm_type")  String? osmType,  String? addresstype,  List<String>? boundingbox, @JsonKey(name: "place_id")  int? osmPlaceId, @JsonKey(name: "place_rank")  int? placeRank,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
return $default(_that.category,_that.address,_that.displayName,_that.importance,_that.lat,_that.licence,_that.lon,_that.name,_that.osmId,_that.osmType,_that.addresstype,_that.boundingbox,_that.osmPlaceId,_that.placeRank,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResponse implements SearchResponse {
  const _SearchResponse({this.category = null, this.address = null, @JsonKey(name: "display_name") this.displayName = null, this.importance = null, this.lat = null, this.licence = null, this.lon = null, this.name = null, @JsonKey(name: "osm_id") this.osmId = null, @JsonKey(name: "osm_type") this.osmType = null, this.addresstype = null, final  List<String>? boundingbox = null, @JsonKey(name: "place_id") this.osmPlaceId = null, @JsonKey(name: "place_rank") this.placeRank = null, this.type = null}): _boundingbox = boundingbox;
  factory _SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);

@override@JsonKey() final  String? category;
@override@JsonKey() final  Address? address;
@override@JsonKey(name: "display_name") final  String? displayName;
@override@JsonKey() final  double? importance;
@override@JsonKey() final  String? lat;
@override@JsonKey() final  String? licence;
@override@JsonKey() final  String? lon;
@override@JsonKey() final  String? name;
@override@JsonKey(name: "osm_id") final  int? osmId;
@override@JsonKey(name: "osm_type") final  String? osmType;
@override@JsonKey() final  String? addresstype;
 final  List<String>? _boundingbox;
@override@JsonKey() List<String>? get boundingbox {
  final value = _boundingbox;
  if (value == null) return null;
  if (_boundingbox is EqualUnmodifiableListView) return _boundingbox;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "place_id") final  int? osmPlaceId;
@override@JsonKey(name: "place_rank") final  int? placeRank;
@override@JsonKey() final  String? type;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResponseCopyWith<_SearchResponse> get copyWith => __$SearchResponseCopyWithImpl<_SearchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponse&&(identical(other.category, category) || other.category == category)&&(identical(other.address, address) || other.address == address)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.importance, importance) || other.importance == importance)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.licence, licence) || other.licence == licence)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.name, name) || other.name == name)&&(identical(other.osmId, osmId) || other.osmId == osmId)&&(identical(other.osmType, osmType) || other.osmType == osmType)&&(identical(other.addresstype, addresstype) || other.addresstype == addresstype)&&const DeepCollectionEquality().equals(other._boundingbox, _boundingbox)&&(identical(other.osmPlaceId, osmPlaceId) || other.osmPlaceId == osmPlaceId)&&(identical(other.placeRank, placeRank) || other.placeRank == placeRank)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,address,displayName,importance,lat,licence,lon,name,osmId,osmType,addresstype,const DeepCollectionEquality().hash(_boundingbox),osmPlaceId,placeRank,type);

@override
String toString() {
  return 'SearchResponse(category: $category, address: $address, displayName: $displayName, importance: $importance, lat: $lat, licence: $licence, lon: $lon, name: $name, osmId: $osmId, osmType: $osmType, addresstype: $addresstype, boundingbox: $boundingbox, osmPlaceId: $osmPlaceId, placeRank: $placeRank, type: $type)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseCopyWith<$Res> implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(_SearchResponse value, $Res Function(_SearchResponse) _then) = __$SearchResponseCopyWithImpl;
@override @useResult
$Res call({
 String? category, Address? address,@JsonKey(name: "display_name") String? displayName, double? importance, String? lat, String? licence, String? lon, String? name,@JsonKey(name: "osm_id") int? osmId,@JsonKey(name: "osm_type") String? osmType, String? addresstype, List<String>? boundingbox,@JsonKey(name: "place_id") int? osmPlaceId,@JsonKey(name: "place_rank") int? placeRank, String? type
});


@override $AddressCopyWith<$Res>? get address;

}
/// @nodoc
class __$SearchResponseCopyWithImpl<$Res>
    implements _$SearchResponseCopyWith<$Res> {
  __$SearchResponseCopyWithImpl(this._self, this._then);

  final _SearchResponse _self;
  final $Res Function(_SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = freezed,Object? address = freezed,Object? displayName = freezed,Object? importance = freezed,Object? lat = freezed,Object? licence = freezed,Object? lon = freezed,Object? name = freezed,Object? osmId = freezed,Object? osmType = freezed,Object? addresstype = freezed,Object? boundingbox = freezed,Object? osmPlaceId = freezed,Object? placeRank = freezed,Object? type = freezed,}) {
  return _then(_SearchResponse(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,importance: freezed == importance ? _self.importance : importance // ignore: cast_nullable_to_non_nullable
as double?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,licence: freezed == licence ? _self.licence : licence // ignore: cast_nullable_to_non_nullable
as String?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,osmId: freezed == osmId ? _self.osmId : osmId // ignore: cast_nullable_to_non_nullable
as int?,osmType: freezed == osmType ? _self.osmType : osmType // ignore: cast_nullable_to_non_nullable
as String?,addresstype: freezed == addresstype ? _self.addresstype : addresstype // ignore: cast_nullable_to_non_nullable
as String?,boundingbox: freezed == boundingbox ? _self._boundingbox : boundingbox // ignore: cast_nullable_to_non_nullable
as List<String>?,osmPlaceId: freezed == osmPlaceId ? _self.osmPlaceId : osmPlaceId // ignore: cast_nullable_to_non_nullable
as int?,placeRank: freezed == placeRank ? _self.placeRank : placeRank // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
