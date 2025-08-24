import 'package:forui_base/shared/data/models/nominatim/address.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_response.g.dart';
part 'search_response.freezed.dart';

@freezed
abstract class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    @Default(null) String? category,
    @Default(null) Address? address,

    @Default(null) @JsonKey(name: "display_name") String? displayName,

    @Default(null) double? importance,
    @Default(null) String? lat,
    @Default(null) String? licence,
    @Default(null) String? lon,
    @Default(null) String? name,
    @Default(null) @JsonKey(name: "osm_id") int? osmId,
    @Default(null) @JsonKey(name: "osm_type") String? osmType,
    @Default(null) String? addresstype,
    @Default(null) List<String>? boundingbox,
    @Default(null) @JsonKey(name: "place_id") int? osmPlaceId,
    @Default(null) @JsonKey(name: "place_rank") int? placeRank,
    @Default(null) String? type,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
