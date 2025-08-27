// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_vehicle_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonVehicleNotifier)
const appCctvPersonVehicleNotifierProvider =
    AppCctvPersonVehicleNotifierProvider._();

final class AppCctvPersonVehicleNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonVehicleNotifier,
          AsyncValue<TResponse<List<Vehicle>>?>
        > {
  const AppCctvPersonVehicleNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvPersonVehicleNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonVehicleNotifierHash();

  @$internal
  @override
  AppCctvPersonVehicleNotifier create() => AppCctvPersonVehicleNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Vehicle>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<TResponse<List<Vehicle>>?>>(value),
    );
  }
}

String _$appCctvPersonVehicleNotifierHash() =>
    r'067283a166052b839b1fbaa7ccd19f0f7c393429';

abstract class _$AppCctvPersonVehicleNotifier
    extends $Notifier<AsyncValue<TResponse<List<Vehicle>>?>> {
  AsyncValue<TResponse<List<Vehicle>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<Vehicle>>?>,
              AsyncValue<TResponse<List<Vehicle>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<Vehicle>>?>,
                AsyncValue<TResponse<List<Vehicle>>?>
              >,
              AsyncValue<TResponse<List<Vehicle>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
