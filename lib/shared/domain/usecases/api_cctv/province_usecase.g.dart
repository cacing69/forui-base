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

String _$provinceUsecaseHash() => r'3d53b35217e59a3ffc3e6f39eb770d6983d92adc';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
