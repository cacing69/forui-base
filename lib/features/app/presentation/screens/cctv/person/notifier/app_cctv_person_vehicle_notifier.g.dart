// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_vehicle_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonVehicleNotifier)
const appCctvPersonVehicleNotifierProvider =
    AppCctvPersonVehicleNotifierFamily._();

final class AppCctvPersonVehicleNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonVehicleNotifier,
          AsyncValue<TResponse<List<Vehicle>>?>
        > {
  const AppCctvPersonVehicleNotifierProvider._({
    required AppCctvPersonVehicleNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'appCctvPersonVehicleNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonVehicleNotifierHash();

  @override
  String toString() {
    return r'appCctvPersonVehicleNotifierProvider'
        ''
        '($argument)';
  }

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

  @override
  bool operator ==(Object other) {
    return other is AppCctvPersonVehicleNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appCctvPersonVehicleNotifierHash() =>
    r'd1c2bd9a2f77edea5b94101916bce89ea6f3ffa4';

final class AppCctvPersonVehicleNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AppCctvPersonVehicleNotifier,
          AsyncValue<TResponse<List<Vehicle>>?>,
          AsyncValue<TResponse<List<Vehicle>>?>,
          AsyncValue<TResponse<List<Vehicle>>?>,
          String
        > {
  const AppCctvPersonVehicleNotifierFamily._()
    : super(
        retry: null,
        name: r'appCctvPersonVehicleNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  AppCctvPersonVehicleNotifierProvider call(String personId) =>
      AppCctvPersonVehicleNotifierProvider._(argument: personId, from: this);

  @override
  String toString() => r'appCctvPersonVehicleNotifierProvider';
}

abstract class _$AppCctvPersonVehicleNotifier
    extends $Notifier<AsyncValue<TResponse<List<Vehicle>>?>> {
  late final _$args = ref.$arg as String;
  String get personId => _$args;

  AsyncValue<TResponse<List<Vehicle>>?> build(String personId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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
