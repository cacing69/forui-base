// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_list_company_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvListCompanyNotifier)
const appCctvListCompanyNotifierProvider =
    AppCctvListCompanyNotifierProvider._();

final class AppCctvListCompanyNotifierProvider
    extends
        $NotifierProvider<
          AppCctvListCompanyNotifier,
          AsyncValue<TResponse<List<Company>>?>
        > {
  const AppCctvListCompanyNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvListCompanyNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvListCompanyNotifierHash();

  @$internal
  @override
  AppCctvListCompanyNotifier create() => AppCctvListCompanyNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Company>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<TResponse<List<Company>>?>>(value),
    );
  }
}

String _$appCctvListCompanyNotifierHash() =>
    r'ab482f9c8ee41875d3100f41fe24eb696b2e0da3';

abstract class _$AppCctvListCompanyNotifier
    extends $Notifier<AsyncValue<TResponse<List<Company>>?>> {
  AsyncValue<TResponse<List<Company>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<Company>>?>,
              AsyncValue<TResponse<List<Company>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<Company>>?>,
                AsyncValue<TResponse<List<Company>>?>
              >,
              AsyncValue<TResponse<List<Company>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
