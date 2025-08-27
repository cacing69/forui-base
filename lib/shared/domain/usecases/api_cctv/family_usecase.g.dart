// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(familyUsecase)
const familyUsecaseProvider = FamilyUsecaseProvider._();

final class FamilyUsecaseProvider
    extends $FunctionalProvider<FamilyUsecase, FamilyUsecase, FamilyUsecase>
    with $Provider<FamilyUsecase> {
  const FamilyUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'familyUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$familyUsecaseHash();

  @$internal
  @override
  $ProviderElement<FamilyUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FamilyUsecase create(Ref ref) {
    return familyUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FamilyUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FamilyUsecase>(value),
    );
  }
}

String _$familyUsecaseHash() => r'c0d7b7d3ec1125426b70baae47862012d580ba3c';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
