import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_link.g.dart';
part 'social_link.freezed.dart';

@freezed
abstract class SocialLink with _$SocialLink {
  const factory SocialLink({
    @Default(null) String? link,
    @Default(null) String? actionLink,
    @Default(null) String? name,
    @Default(null) String? username,
  }) = _SocialLink;

  factory SocialLink.fromJson(Map<String, dynamic> json) =>
      _$SocialLinkFromJson(json);
}
