// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_province_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvProvinceNotifier)
const appCctvProvinceNotifierProvider = AppCctvProvinceNotifierProvider._();

final class AppCctvProvinceNotifierProvider
    extends
        $NotifierProvider<
          AppCctvProvinceNotifier,
          AsyncValue<TResponse<List<Province>>?>
        > {
  const AppCctvProvinceNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvProvinceNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvProvinceNotifierHash();

  @$internal
  @override
  AppCctvProvinceNotifier create() => AppCctvProvinceNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Province>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<TResponse<List<Province>>?>>(value),
    );
  }
}

String _$appCctvProvinceNotifierHash() =>
    r'bb33e32e4ff4aaccd87b28cc0f9330c8c941acf4';

abstract class _$AppCctvProvinceNotifier
    extends $Notifier<AsyncValue<TResponse<List<Province>>?>> {
  AsyncValue<TResponse<List<Province>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<Province>>?>,
              AsyncValue<TResponse<List<Province>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<Province>>?>,
                AsyncValue<TResponse<List<Province>>?>
              >,
              AsyncValue<TResponse<List<Province>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
