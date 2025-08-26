// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'API_APP_CCTV_DOMAIN')
  static String apiAppCctvDomain = _Env.apiAppCctvDomain;

  @EnviedField(varName: 'API_APP_CCTV_HTTP_HEADER_X_PASSWORD')
  static String apiAppCctvHeaderXPassword = _Env.apiAppCctvHeaderXPassword;

  @EnviedField(varName: 'API_APP_CCTV_BEARER_TOKEN')
  static String apiAppCctvBearerToken = _Env.apiAppCctvBearerToken;
}
