// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'village_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(villageUsecase)
const villageUsecaseProvider = VillageUsecaseProvider._();

final class VillageUsecaseProvider
    extends $FunctionalProvider<VillageUsecase, VillageUsecase, VillageUsecase>
    with $Provider<VillageUsecase> {
  const VillageUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'villageUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$villageUsecaseHash();

  @$internal
  @override
  $ProviderElement<VillageUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  VillageUsecase create(Ref ref) {
    return villageUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VillageUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VillageUsecase>(value),
    );
  }
}

String _$villageUsecaseHash() => r'03ea76cc46148eed1eb75237aef7160e7a7f76c8';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
