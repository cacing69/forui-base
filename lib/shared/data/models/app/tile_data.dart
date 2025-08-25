import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tile_data.freezed.dart';

@freezed
abstract class TileData with _$TileData {
  const factory TileData({
    @Default(null) IconData? icon,
    @Default(null) String? title,
    @Default(null) String? subtitle,
    @Default(null) bool? status,
  }) = _TileData;
}
