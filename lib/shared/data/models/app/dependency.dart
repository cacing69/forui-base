import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dependency.freezed.dart';

@freezed
abstract class Dependency with _$Dependency {
  const factory Dependency({
    @Default(null) IconData? icon,
    @Default(null) String? logo,
    @Default(null) String? name,
    @Default(null) String? url,
  }) = _Dependency;
}
