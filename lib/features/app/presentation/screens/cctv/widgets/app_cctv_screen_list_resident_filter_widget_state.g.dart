// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_screen_list_resident_filter_widget_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppCctvScreenListResidentFilterWidgetState
_$AppCctvScreenListResidentFilterWidgetStateFromJson(
  Map<String, dynamic> json,
) => _AppCctvScreenListResidentFilterWidgetState(
  province: json['province'] == null
      ? null
      : Province.fromJson(json['province'] as Map<String, dynamic>),
  city: json['city'] == null
      ? null
      : City.fromJson(json['city'] as Map<String, dynamic>),
  district: json['district'] == null
      ? null
      : District.fromJson(json['district'] as Map<String, dynamic>),
  village: json['village'] == null
      ? null
      : Village.fromJson(json['village'] as Map<String, dynamic>),
  minAge: (json['minAge'] as num?)?.toInt() ?? null,
  maxAge: (json['maxAge'] as num?)?.toInt() ?? null,
  dateOfBirth: json['dateOfBirth'] as String? ?? null,
  search: json['search'] as String? ?? null,
);

Map<String, dynamic> _$AppCctvScreenListResidentFilterWidgetStateToJson(
  _AppCctvScreenListResidentFilterWidgetState instance,
) => <String, dynamic>{
  'province': instance.province,
  'city': instance.city,
  'district': instance.district,
  'village': instance.village,
  'minAge': instance.minAge,
  'maxAge': instance.maxAge,
  'dateOfBirth': instance.dateOfBirth,
  'search': instance.search,
};
