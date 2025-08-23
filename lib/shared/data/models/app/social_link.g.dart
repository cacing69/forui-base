// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialLink _$SocialLinkFromJson(Map<String, dynamic> json) => _SocialLink(
  link: json['link'] as String? ?? null,
  actionLink: json['actionLink'] as String? ?? null,
  name: json['name'] as String? ?? null,
  username: json['username'] as String? ?? null,
);

Map<String, dynamic> _$SocialLinkToJson(_SocialLink instance) =>
    <String, dynamic>{
      'link': instance.link,
      'actionLink': instance.actionLink,
      'name': instance.name,
      'username': instance.username,
    };
