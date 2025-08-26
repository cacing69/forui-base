// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resident_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(residentsUsecase)
const residentsUsecaseProvider = ResidentsUsecaseProvider._();

final class ResidentsUsecaseProvider
    extends
        $FunctionalProvider<
          ResidentsUsecase,
          ResidentsUsecase,
          ResidentsUsecase
        >
    with $Provider<ResidentsUsecase> {
  const ResidentsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'residentsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$residentsUsecaseHash();

  @$internal
  @override
  $ProviderElement<ResidentsUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ResidentsUsecase create(Ref ref) {
    return residentsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ResidentsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ResidentsUsecase>(value),
    );
  }
}

String _$residentsUsecaseHash() => r'ea6cf7718d685f20a52d8b6e6eef669240391841';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
