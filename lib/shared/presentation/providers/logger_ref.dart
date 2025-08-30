import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logger_ref.g.dart';

@riverpod
Logger loggerRef(Ref ref) {
  return Logger(printer: PrefixPrinter(PrettyPrinter(printEmojis: false)));
}
