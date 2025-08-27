// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_city_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvCityNotifier)
const appCctvCityNotifierProvider = AppCctvCityNotifierProvider._();

final class AppCctvCityNotifierProvider
    extends
        $NotifierProvider<
          AppCctvCityNotifier,
          AsyncValue<TResponse<List<City>>?>
        > {
  const AppCctvCityNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvCityNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvCityNotifierHash();

  @$internal
  @override
  AppCctvCityNotifier create() => AppCctvCityNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<City>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<TResponse<List<City>>?>>(
        value,
      ),
    );
  }
}

String _$appCctvCityNotifierHash() =>
    r'21fd992825fbe6ea636c9e713e19c1dd8d6411a4';

abstract class _$AppCctvCityNotifier
    extends $Notifier<AsyncValue<TResponse<List<City>>?>> {
  AsyncValue<TResponse<List<City>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<City>>?>,
              AsyncValue<TResponse<List<City>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<City>>?>,
                AsyncValue<TResponse<List<City>>?>
              >,
              AsyncValue<TResponse<List<City>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
