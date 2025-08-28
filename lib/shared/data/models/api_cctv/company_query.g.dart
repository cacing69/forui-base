// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyQuery _$CompanyQueryFromJson(Map<String, dynamic> json) =>
    _CompanyQuery(
      start: json['start'] as String? ?? "0",
      length: json['length'] as String? ?? "5",
      search: json['search'] as String? ?? "",
    );

Map<String, dynamic> _$CompanyQueryToJson(_CompanyQuery instance) =>
    <String, dynamic>{
      'start': instance.start,
      'length': instance.length,
      'search': instance.search,
    };
