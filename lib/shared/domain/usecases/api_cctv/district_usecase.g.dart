// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(districtUsecase)
const districtUsecaseProvider = DistrictUsecaseProvider._();

final class DistrictUsecaseProvider
    extends
        $FunctionalProvider<DistrictUsecase, DistrictUsecase, DistrictUsecase>
    with $Provider<DistrictUsecase> {
  const DistrictUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'districtUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$districtUsecaseHash();

  @$internal
  @override
  $ProviderElement<DistrictUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DistrictUsecase create(Ref ref) {
    return districtUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DistrictUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DistrictUsecase>(value),
    );
  }
}

String _$districtUsecaseHash() => r'f5daaa5ec16566b4a0f152d0116b2827e51ec530';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
