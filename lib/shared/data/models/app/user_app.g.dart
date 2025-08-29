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
  email: json['email'] as String? ?? null,
  phone: json['phone'] as String? ?? null,
  github: json['github'] as String? ?? null,
  linkedIn: json['linkedIn'] as String? ?? null,
  facebook: json['facebook'] as String? ?? null,
);

Map<String, dynamic> _$UserAppToJson(_UserApp instance) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'avatar': instance.avatar,
  'bio': instance.bio,
  'email': instance.email,
  'phone': instance.phone,
  'github': instance.github,
  'linkedIn': instance.linkedIn,
  'facebook': instance.facebook,
};
