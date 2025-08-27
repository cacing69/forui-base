// class AppCctvScreenFilterWidgetState {}

// import 'package:forui_base/core/utils/big_int_converter.dart';
import 'package:forui_base/shared/data/models/api_cctv/city.dart';
import 'package:forui_base/shared/data/models/api_cctv/district.dart';
import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_base/shared/data/models/api_cctv/village.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cctv_screen_filter_widget_state.g.dart';
part 'app_cctv_screen_filter_widget_state.freezed.dart';

@freezed
abstract class AppCctvScreenFilterWidgetState
    with _$AppCctvScreenFilterWidgetState {
  const factory AppCctvScreenFilterWidgetState({
    @Default(null) Province? province,
    @Default(null) City? city,
    @Default(null) District? district,
    @Default(null) Village? village,
    @Default(null) int? minAge,
    @Default(null) int? maxAge,
    @Default(null) String? dateOfBirth,
    @Default(null) String? search,
  }) = _AppCctvScreenFilterWidgetState;

  factory AppCctvScreenFilterWidgetState.fromJson(Map<String, dynamic> json) =>
      _$AppCctvScreenFilterWidgetStateFromJson(json);
}
