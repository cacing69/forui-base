// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
  iso31662Lvl4: json['ISO3166-2-lvl4'] as String? ?? null,
  borough: json['borough'] as String? ?? null,
  city: json['city'] as String? ?? null,
  country: json['country'] as String? ?? null,
  countryCode: json['country_code'] as String? ?? null,
  neighbourhood: json['neighbourhood'] as String? ?? null,
  postcode: json['postcode'] as String? ?? null,
  road: json['road'] as String? ?? null,
  shop: json['shop'] as String? ?? null,
  suburb: json['suburb'] as String? ?? null,
);

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
  'ISO3166-2-lvl4': instance.iso31662Lvl4,
  'borough': instance.borough,
  'city': instance.city,
  'country': instance.country,
  'country_code': instance.countryCode,
  'neighbourhood': instance.neighbourhood,
  'postcode': instance.postcode,
  'road': instance.road,
  'shop': instance.shop,
  'suburb': instance.suburb,
};
