// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resident_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(residentUsecase)
const residentUsecaseProvider = ResidentUsecaseProvider._();

final class ResidentUsecaseProvider
    extends
        $FunctionalProvider<ResidentUsecase, ResidentUsecase, ResidentUsecase>
    with $Provider<ResidentUsecase> {
  const ResidentUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'residentUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$residentUsecaseHash();

  @$internal
  @override
  $ProviderElement<ResidentUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ResidentUsecase create(Ref ref) {
    return residentUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ResidentUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ResidentUsecase>(value),
    );
  }
}

String _$residentUsecaseHash() => r'345c548d3e9816663c502059e31c799dbd8939ef';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
