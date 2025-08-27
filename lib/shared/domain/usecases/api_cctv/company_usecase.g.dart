// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(companyUsecase)
const companyUsecaseProvider = CompanyUsecaseProvider._();

final class CompanyUsecaseProvider
    extends $FunctionalProvider<CompanyUsecase, CompanyUsecase, CompanyUsecase>
    with $Provider<CompanyUsecase> {
  const CompanyUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'companyUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$companyUsecaseHash();

  @$internal
  @override
  $ProviderElement<CompanyUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CompanyUsecase create(Ref ref) {
    return companyUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CompanyUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CompanyUsecase>(value),
    );
  }
}

String _$companyUsecaseHash() => r'6227defee8e77457638d7ac35da6106b3ee25332';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
