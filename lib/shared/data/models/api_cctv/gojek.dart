import 'package:forui_base/shared/data/models/api_cctv/gojek_phone.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gojek.g.dart';
part 'gojek.freezed.dart';

@freezed
abstract class Gojek with _$Gojek {
  const factory Gojek({
    @Default(null) String? driverFlag,
    @Default(null) String? createdDate,
    @Default(null) String? name,
    @Default(null) String? email,
    @Default(null) GojekPhone? phone,
  }) = _Gojek;

  factory Gojek.fromJson(Map<String, dynamic> json) => _$GojekFromJson(json);
}
