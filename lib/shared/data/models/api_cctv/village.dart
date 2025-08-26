import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'village.g.dart';
part 'village.freezed.dart';

@freezed
abstract class Village with _$Village {
  const factory Village({
    @Default(null) String? name,
    @BigIntConverter() @Default(null) BigInt? id,
  }) = _Village;

  factory Village.fromJson(Map<String, dynamic> json) =>
      _$VillageFromJson(json);
}
