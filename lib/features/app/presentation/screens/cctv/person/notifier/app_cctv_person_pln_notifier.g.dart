// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_pln_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonPlnNotifier)
const appCctvPersonPlnNotifierProvider = AppCctvPersonPlnNotifierProvider._();

final class AppCctvPersonPlnNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonPlnNotifier,
          AsyncValue<TResponse<List<Pln>>?>
        > {
  const AppCctvPersonPlnNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvPersonPlnNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonPlnNotifierHash();

  @$internal
  @override
  AppCctvPersonPlnNotifier create() => AppCctvPersonPlnNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Pln>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<TResponse<List<Pln>>?>>(
        value,
      ),
    );
  }
}

String _$appCctvPersonPlnNotifierHash() =>
    r'6f6a1f49c758a4f0f8bbedb0c3dab9baa86f2849';

abstract class _$AppCctvPersonPlnNotifier
    extends $Notifier<AsyncValue<TResponse<List<Pln>>?>> {
  AsyncValue<TResponse<List<Pln>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<Pln>>?>,
              AsyncValue<TResponse<List<Pln>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<Pln>>?>,
                AsyncValue<TResponse<List<Pln>>?>
              >,
              AsyncValue<TResponse<List<Pln>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
