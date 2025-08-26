// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_resident_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvResidentNotifier)
const appCctvResidentNotifierProvider = AppCctvResidentNotifierProvider._();

final class AppCctvResidentNotifierProvider
    extends
        $NotifierProvider<
          AppCctvResidentNotifier,
          AsyncValue<TResponse<List<Resident>>?>
        > {
  const AppCctvResidentNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvResidentNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvResidentNotifierHash();

  @$internal
  @override
  AppCctvResidentNotifier create() => AppCctvResidentNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Resident>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<TResponse<List<Resident>>?>>(value),
    );
  }
}

String _$appCctvResidentNotifierHash() =>
    r'8669c13a476faf0857da670f8431c0fc07675227';

abstract class _$AppCctvResidentNotifier
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
