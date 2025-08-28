// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_village_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvVillageNotifier)
const appCctvVillageNotifierProvider = AppCctvVillageNotifierProvider._();

final class AppCctvVillageNotifierProvider
    extends
        $NotifierProvider<
          AppCctvVillageNotifier,
          AsyncValue<TResponse<List<Village>>?>
        > {
  const AppCctvVillageNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvVillageNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvVillageNotifierHash();

  @$internal
  @override
  AppCctvVillageNotifier create() => AppCctvVillageNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Village>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<TResponse<List<Village>>?>>(value),
    );
  }
}

String _$appCctvVillageNotifierHash() =>
    r'794ac6a007f29e7639d851ca0fc70f3765f1da7e';

abstract class _$AppCctvVillageNotifier
    extends $Notifier<AsyncValue<TResponse<List<Village>>?>> {
  AsyncValue<TResponse<List<Village>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<Village>>?>,
              AsyncValue<TResponse<List<Village>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<Village>>?>,
                AsyncValue<TResponse<List<Village>>?>
              >,
              AsyncValue<TResponse<List<Village>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
