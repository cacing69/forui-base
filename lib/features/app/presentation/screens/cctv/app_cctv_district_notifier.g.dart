// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_district_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvDistrictNotifier)
const appCctvDistrictNotifierProvider = AppCctvDistrictNotifierProvider._();

final class AppCctvDistrictNotifierProvider
    extends
        $NotifierProvider<
          AppCctvDistrictNotifier,
          AsyncValue<TResponse<List<District>>?>
        > {
  const AppCctvDistrictNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvDistrictNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvDistrictNotifierHash();

  @$internal
  @override
  AppCctvDistrictNotifier create() => AppCctvDistrictNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<District>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<TResponse<List<District>>?>>(value),
    );
  }
}

String _$appCctvDistrictNotifierHash() =>
    r'b89f71738f934ba343cf4ab2ec2f7e29ef1a4a15';

abstract class _$AppCctvDistrictNotifier
    extends $Notifier<AsyncValue<TResponse<List<District>>?>> {
  AsyncValue<TResponse<List<District>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<District>>?>,
              AsyncValue<TResponse<List<District>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<District>>?>,
                AsyncValue<TResponse<List<District>>?>
              >,
              AsyncValue<TResponse<List<District>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
