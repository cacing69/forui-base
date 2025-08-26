import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui_base/core/config/env.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_cctv_http_client.g.dart';

@riverpod
Dio apiCctvHttpClient(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: "http://${Env.apiAppCctvDomain}",
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate',
        'Accept-Language': 'en-US,en;q=0.9,id-ID;q=0.8,id;q=0.7',
        'User-Agent':
            'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36',
        'Content-Type': 'application/json',
        'connection': 'keep-alive',
        "Host": Env.apiAppCctvDomain,
        "Origin": "http://${Env.apiAppCctvDomain}",
        "Referer": "http://${Env.apiAppCctvDomain}/",
        "X-Password": Env.apiAppCctvHeaderXPassword,
        "Authorization": "Bearer ${Env.apiAppCctvBearerToken}",
      },
    ),
  );

  if (kDebugMode) {
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
  }

  return dio;
}
