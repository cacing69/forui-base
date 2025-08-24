import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nominatim_http_client.g.dart';

@riverpod
Dio nominatimHttpClient(Ref ref) {
  final dio = Dio(
    BaseOptions(
      headers: {
        'User-Agent': 'ForuiBase/1.0',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Accept-Language': 'id',
      },
    ),
  );

  // TODO : Check dan pastikan hanya berjalan dalam mode debug
  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: false,
      responseBody: true,
      error: true,
      compact: false,
    ),
  );

  return dio;
}
