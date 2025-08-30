import 'dart:convert';

import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class TResponseAdapter<T> extends TypeAdapter<TResponse<T>> {
  final T Function(Map<String, dynamic>) fromJson;
  final Map<String, dynamic> Function(T) toJson;

  @override
  final int typeId;

  const TResponseAdapter({
    required this.typeId,
    required this.fromJson,
    required this.toJson,
  });

  @override
  TResponse<T> read(BinaryReader reader) {
    final status = reader.readString();
    final message = reader.readString();
    final dataJson = reader.readString();
    final data = fromJson(jsonDecode(dataJson));
    return TResponse<T>(status: status, message: message, data: data);
  }

  @override
  void write(BinaryWriter writer, TResponse<T> obj) {
    writer.writeString(obj.status);
    writer.writeString(obj.message ?? "");

    if (obj.data != null) {
      writer.writeString(jsonEncode(toJson(obj.data as T)));
    } else {
      writer.writeString('{}');
    }
  }
}
