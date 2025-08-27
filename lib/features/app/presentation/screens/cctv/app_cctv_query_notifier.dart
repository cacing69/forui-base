import 'package:forui_base/shared/data/models/api_cctv/resident_query.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_query_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvQueryNotifier extends _$AppCctvQueryNotifier {
  @override
  ResidentQuery build() {
    return ResidentQuery();
  }

  void update(ResidentQuery newState) {
    state = newState;
  }

  void setProvinceId(String? id) {
    state = state.copyWith(provinceId: id);
  }

  void setCityId(String? id) {
    state = state.copyWith(cityId: id);
  }

  void setDistrictId(String? id) {
    state = state.copyWith(districtId: id);
  }

  void setVillageId(String? id) {
    state = state.copyWith(villageId: id);
  }

  void setSearch(String? search) {
    state = state.copyWith(search: search);
  }

  void reset() {
    state = ResidentQuery();
  }
}
