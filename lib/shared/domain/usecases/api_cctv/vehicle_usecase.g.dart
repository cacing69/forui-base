// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(vehicleUsecase)
const vehicleUsecaseProvider = VehicleUsecaseProvider._();

final class VehicleUsecaseProvider
    extends $FunctionalProvider<VehicleUsecase, VehicleUsecase, VehicleUsecase>
    with $Provider<VehicleUsecase> {
  const VehicleUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'vehicleUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$vehicleUsecaseHash();

  @$internal
  @override
  $ProviderElement<VehicleUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  VehicleUsecase create(Ref ref) {
    return vehicleUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VehicleUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VehicleUsecase>(value),
    );
  }
}

String _$vehicleUsecaseHash() => r'99c62e3cd6c029ec58ef262ace3723793e61bcb1';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
