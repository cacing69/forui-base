import 'package:hive_ce_flutter/hive_flutter.dart';

part 'key_value.g.dart';

@HiveType(typeId: 1)
class KeyValue {
  @HiveField(0)
  final String key;

  @HiveField(1)
  final String value;

  KeyValue({required this.key, required this.value});
}
