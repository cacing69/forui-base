// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_company_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonCompanyNotifier)
const appCctvPersonCompanyNotifierProvider =
    AppCctvPersonCompanyNotifierProvider._();

final class AppCctvPersonCompanyNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonCompanyNotifier,
          AsyncValue<TResponse<List<Company>>?>
        > {
  const AppCctvPersonCompanyNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvPersonCompanyNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonCompanyNotifierHash();

  @$internal
  @override
  AppCctvPersonCompanyNotifier create() => AppCctvPersonCompanyNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Company>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<TResponse<List<Company>>?>>(value),
    );
  }
}

String _$appCctvPersonCompanyNotifierHash() =>
    r'd8eae11c552c74227ac6ce5d67e55babfe0d19c1';

abstract class _$AppCctvPersonCompanyNotifier
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
