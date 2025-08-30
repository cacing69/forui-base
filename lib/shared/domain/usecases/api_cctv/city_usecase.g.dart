// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(cityUsecase)
const cityUsecaseProvider = CityUsecaseProvider._();

final class CityUsecaseProvider
    extends $FunctionalProvider<CityUsecase, CityUsecase, CityUsecase>
    with $Provider<CityUsecase> {
  const CityUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cityUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cityUsecaseHash();

  @$internal
  @override
  $ProviderElement<CityUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CityUsecase create(Ref ref) {
    return cityUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CityUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CityUsecase>(value),
    );
  }
}

String _$cityUsecaseHash() => r'e1eeb6e542f3754bdb22a50c87d98a3d846a826a';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
