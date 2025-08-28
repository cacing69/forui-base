// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(companiesUsecase)
const companiesUsecaseProvider = CompaniesUsecaseProvider._();

final class CompaniesUsecaseProvider
    extends
        $FunctionalProvider<
          CompaniesUsecase,
          CompaniesUsecase,
          CompaniesUsecase
        >
    with $Provider<CompaniesUsecase> {
  const CompaniesUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'companiesUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$companiesUsecaseHash();

  @$internal
  @override
  $ProviderElement<CompaniesUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CompaniesUsecase create(Ref ref) {
    return companiesUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CompaniesUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CompaniesUsecase>(value),
    );
  }
}

String _$companiesUsecaseHash() => r'fee0cd4dd63512249c62e4a71587c4f3b5fee8f4';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
