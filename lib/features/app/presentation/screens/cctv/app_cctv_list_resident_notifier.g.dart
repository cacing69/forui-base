// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_list_resident_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvListResidentNotifier)
const appCctvListResidentNotifierProvider =
    AppCctvListResidentNotifierProvider._();

final class AppCctvListResidentNotifierProvider
    extends
        $NotifierProvider<
          AppCctvListResidentNotifier,
          AsyncValue<TResponse<List<Resident>>?>
        > {
  const AppCctvListResidentNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvListResidentNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvListResidentNotifierHash();

  @$internal
  @override
  AppCctvListResidentNotifier create() => AppCctvListResidentNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Resident>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<TResponse<List<Resident>>?>>(value),
    );
  }
}

String _$appCctvListResidentNotifierHash() =>
    r'd2c9da09383352e7b480cbd40e726669d4d02041';

abstract class _$AppCctvListResidentNotifier
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
