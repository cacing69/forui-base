import 'package:forui_base/features/app/presentation/screens/cctv/widgets/app_cctv_screen_filter_widget_state.dart';
import 'package:forui_base/shared/data/models/api_cctv/city.dart';
import 'package:forui_base/shared/data/models/api_cctv/district.dart';
import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_base/shared/data/models/api_cctv/village.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_screen_filter_widget_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvScreenFilterWidgetNotifier
    extends _$AppCctvScreenFilterWidgetNotifier {
  @override
  AppCctvScreenFilterWidgetState build() {
    return AppCctvScreenFilterWidgetState();
  }

  void update(AppCctvScreenFilterWidgetState newState) {
    state = newState;
  }

  void setProvince(Province? province) {
    state = state.copyWith(province: province);
  }

  void setCity(City? city) {
    state = state.copyWith(city: city);
  }

  void setDistrict(District? disctrict) {
    state = state.copyWith(district: disctrict);
  }

  void setVillage(Village? village) {
    state = state.copyWith(village: village);
  }

  void setSearch(String? search) {
    state = state.copyWith(search: search);
  }

  void reset() {
    state = AppCctvScreenFilterWidgetState();
  }
}
