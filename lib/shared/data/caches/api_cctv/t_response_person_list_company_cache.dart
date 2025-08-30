import 'package:forui_base/shared/data/models/api_cctv/t_response.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 't_response_person_list_company_cache.g.dart';

@riverpod
TResponsePersonListCompanyCache tResponsePersonListCompanyCacheRef(Ref ref) {
  return TResponsePersonListCompanyCache();
}

class TResponsePersonListCompanyCache {
  static final TResponsePersonListCompanyCache _instance =
      TResponsePersonListCompanyCache._internal();
  factory TResponsePersonListCompanyCache() => _instance;
  TResponsePersonListCompanyCache._internal();

  Box<TResponse<List<Company>>>? _box;

  final String _boxName = 'box_cached_t_response_person_list_company';

  Future<Box<TResponse<List<Company>>>> getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<TResponse<List<Company>>>(_boxName);
    return _box!;
  }

  Future<TResponse<List<Company>>?> get(String companyId) async {
    final box = await getBox();
    return box.get(keyName(companyId));
  }

  Future<void> put(String companyId, TResponse<List<Company>> response) async {
    final box = await getBox();
    await box.put(keyName(companyId), response);
  }

  String keyName(String companyId) =>
      't_response_person_list_company_$companyId';
}
