// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_value.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KeyValueAdapter extends TypeAdapter<KeyValue> {
  @override
  final typeId = 1;

  @override
  KeyValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KeyValue(key: fields[0] as String, value: fields[1] as String);
  }

  @override
  void write(BinaryWriter writer, KeyValue obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KeyValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
