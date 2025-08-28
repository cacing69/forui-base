import 'package:forui_base/shared/data/models/api_cctv/company_query.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_cctv_screen_list_company_filter_widget_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppCctvScreenListCompanyFilterWidgetNotifier
    extends _$AppCctvScreenListCompanyFilterWidgetNotifier {
  @override
  CompanyQuery build() {
    return CompanyQuery();
  }

  void update(CompanyQuery newState) {
    state = newState;
  }

  void setSearch(String? search) {
    state = state.copyWith(search: search);
  }

  void setStart(String? start) {
    state = state.copyWith(start: start);
  }

  void setLength(String? length) {
    state = state.copyWith(length: length);
  }

  void reset() {
    state = CompanyQuery();
  }
}
