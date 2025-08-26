// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvNotifier)
const appCctvNotifierProvider = AppCctvNotifierProvider._();

final class AppCctvNotifierProvider
    extends
        $NotifierProvider<
          AppCctvNotifier,
          AsyncValue<TResponse<List<Resident>>?>
        > {
  const AppCctvNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvNotifierHash();

  @$internal
  @override
  AppCctvNotifier create() => AppCctvNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Resident>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<TResponse<List<Resident>>?>>(value),
    );
  }
}

String _$appCctvNotifierHash() => r'5f9e5195bf44218705083a53a029bf7950bf1ad1';

abstract class _$AppCctvNotifier
    extends $Notifier<AsyncValue<TResponse<List<Resident>>?>> {
  AsyncValue<TResponse<List<Resident>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<Resident>>?>,
              AsyncValue<TResponse<List<Resident>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<Resident>>?>,
                AsyncValue<TResponse<List<Resident>>?>
              >,
              AsyncValue<TResponse<List<Resident>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
