// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_screen_list_company_filter_widget_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvScreenListCompanyFilterWidgetNotifier)
const appCctvScreenListCompanyFilterWidgetNotifierProvider =
    AppCctvScreenListCompanyFilterWidgetNotifierProvider._();

final class AppCctvScreenListCompanyFilterWidgetNotifierProvider
    extends
        $NotifierProvider<
          AppCctvScreenListCompanyFilterWidgetNotifier,
          CompanyQuery
        > {
  const AppCctvScreenListCompanyFilterWidgetNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvScreenListCompanyFilterWidgetNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$appCctvScreenListCompanyFilterWidgetNotifierHash();

  @$internal
  @override
  AppCctvScreenListCompanyFilterWidgetNotifier create() =>
      AppCctvScreenListCompanyFilterWidgetNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CompanyQuery value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CompanyQuery>(value),
    );
  }
}

String _$appCctvScreenListCompanyFilterWidgetNotifierHash() =>
    r'829f09c456e8a8954f9459ec39b45a99707a2646';

abstract class _$AppCctvScreenListCompanyFilterWidgetNotifier
    extends $Notifier<CompanyQuery> {
  CompanyQuery build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CompanyQuery, CompanyQuery>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CompanyQuery, CompanyQuery>,
              CompanyQuery,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
