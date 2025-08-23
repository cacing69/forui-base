// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserApp _$UserAppFromJson(Map<String, dynamic> json) => _UserApp(
  firstName: json['firstName'] as String? ?? null,
  lastName: json['lastName'] as String? ?? null,
  avatar: json['avatar'] as String? ?? null,
  bio: json['bio'] as String? ?? null,
  socialLinks:
      (json['socialLinks'] as List<dynamic>?)
          ?.map((e) => SocialLink.fromJson(e as Map<String, dynamic>))
          .toList() ??
      null,
);

Map<String, dynamic> _$UserAppToJson(_UserApp instance) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'avatar': instance.avatar,
  'bio': instance.bio,
  'socialLinks': instance.socialLinks,
};
