import 'package:forui_base/shared/data/models/api_cctv/company_query.dart';
import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_list_company_cache.g.dart';

@riverpod
TResponseListCompanyCache tResponseListCompanyCache(Ref ref) {
  return TResponseListCompanyCache();
}

class TResponseListCompanyCache {
  static final TResponseListCompanyCache _instance =
      TResponseListCompanyCache._internal();
  factory TResponseListCompanyCache() => _instance;
  TResponseListCompanyCache._internal();

  Box<TResponse<List<Company>>>? _box;

  final String _boxName = 'box_cached_t_response_list_company';

  Future<Box<TResponse<List<Company>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Company>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Company>>?> get(CompanyQuery params) async {
    final box = await getBox();
    return box.get(keyName(params));
  }

  Future<void> put(
    CompanyQuery params,
    TResponse<List<Company>> response,
  ) async {
    final box = await getBox();
    await box.put(keyName(params), response);
  }

  String keyName(CompanyQuery params) =>
      't_response_list_company_${params.start}_${params.length}_${params.search}';
}
