// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(provinceUsecase)
const provinceUsecaseProvider = ProvinceUsecaseProvider._();

final class ProvinceUsecaseProvider
    extends
        $FunctionalProvider<ProvinceUsecase, ProvinceUsecase, ProvinceUsecase>
    with $Provider<ProvinceUsecase> {
  const ProvinceUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'provinceUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$provinceUsecaseHash();

  @$internal
  @override
  $ProviderElement<ProvinceUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProvinceUsecase create(Ref ref) {
    return provinceUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProvinceUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProvinceUsecase>(value),
    );
  }
}

String _$provinceUsecaseHash() => r'4f3645f2e9c802e826c346f26de532a951f64c58';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
