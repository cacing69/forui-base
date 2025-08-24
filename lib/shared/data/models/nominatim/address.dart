import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.g.dart';
part 'address.freezed.dart';

@freezed
abstract class Address with _$Address {
  const factory Address({
    @Default(null) @JsonKey(name: "ISO3166-2-lvl4") String? iso31662Lvl4,
    @Default(null) String? borough,
    @Default(null) String? city,
    @Default(null) String? country,
    @Default(null) @JsonKey(name: "country_code") String? countryCode,
    @Default(null) String? neighbourhood,
    @Default(null) String? postcode,
    @Default(null) String? road,
    @Default(null) String? shop,
    @Default(null) String? suburb,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
