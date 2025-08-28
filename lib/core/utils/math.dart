import 'package:intl/intl.dart';

Map<T, String> calculatePercentage<T>(Map<T, num> data) {
  final total = data.values.fold<num>(0, (a, b) => a + b);

  if (total == 0) {
    // Kalau semua 0, return 0% semua
    return data.map((key, _) => MapEntry(key, "0%"));
  }

  final formatter = NumberFormat.percentPattern(); // format jadi %

  return data.map((key, value) {
    final ratio = value / total;
    return MapEntry(key, formatter.format(ratio)); // contoh: "33%"
  });
}
