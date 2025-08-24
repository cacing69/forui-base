// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    _SearchResponse(
      category: json['category'] as String? ?? null,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      displayName: json['display_name'] as String? ?? null,
      importance: (json['importance'] as num?)?.toDouble() ?? null,
      lat: json['lat'] as String? ?? null,
      licence: json['licence'] as String? ?? null,
      lon: json['lon'] as String? ?? null,
      name: json['name'] as String? ?? null,
      osmId: (json['osm_id'] as num?)?.toInt() ?? null,
      osmType: json['osm_type'] as String? ?? null,
      addresstype: json['addresstype'] as String? ?? null,
      boundingbox:
          (json['boundingbox'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          null,
      osmPlaceId: (json['place_id'] as num?)?.toInt() ?? null,
      placeRank: (json['place_rank'] as num?)?.toInt() ?? null,
      type: json['type'] as String? ?? null,
    );

Map<String, dynamic> _$SearchResponseToJson(_SearchResponse instance) =>
    <String, dynamic>{
      'category': instance.category,
      'address': instance.address,
      'display_name': instance.displayName,
      'importance': instance.importance,
      'lat': instance.lat,
      'licence': instance.licence,
      'lon': instance.lon,
      'name': instance.name,
      'osm_id': instance.osmId,
      'osm_type': instance.osmType,
      'addresstype': instance.addresstype,
      'boundingbox': instance.boundingbox,
      'place_id': instance.osmPlaceId,
      'place_rank': instance.placeRank,
      'type': instance.type,
    };
