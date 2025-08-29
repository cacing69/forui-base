// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CachedResponseAdapter extends TypeAdapter<CachedResponse> {
  @override
  final typeId = 1;

  @override
  CachedResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CachedResponse(
      key: fields[0] as String,
      response: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CachedResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.response);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CachedResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
