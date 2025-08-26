import 'package:json_annotation/json_annotation.dart';
part 't_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class TResponse<T> {
  final String status;
  final String? message;
  final T? data;

  TResponse({required this.status, required this.message, this.data});

  factory TResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$TResponseFromJson(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$TResponseToJson(this, toJsonT);

  TResponse<T> copyWith({String? status, String? message, T? data}) {
    return TResponse<T>(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}
