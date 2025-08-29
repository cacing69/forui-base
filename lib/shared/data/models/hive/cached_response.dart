import 'package:hive_ce_flutter/hive_flutter.dart';

part 'cached_response.g.dart';

@HiveType(typeId: 1)
class CachedResponse {
  @HiveField(0)
  final String key;

  @HiveField(1)
  final String response;

  CachedResponse({required this.key, required this.response});
}
