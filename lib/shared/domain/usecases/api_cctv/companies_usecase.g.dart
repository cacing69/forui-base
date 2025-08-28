// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(companiesUsecaes)
const companiesUsecaesProvider = CompaniesUsecaesProvider._();

final class CompaniesUsecaesProvider
    extends
        $FunctionalProvider<
          CompaniesUsecaes,
          CompaniesUsecaes,
          CompaniesUsecaes
        >
    with $Provider<CompaniesUsecaes> {
  const CompaniesUsecaesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'companiesUsecaesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$companiesUsecaesHash();

  @$internal
  @override
  $ProviderElement<CompaniesUsecaes> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CompaniesUsecaes create(Ref ref) {
    return companiesUsecaes(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CompaniesUsecaes value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CompaniesUsecaes>(value),
    );
  }
}

String _$companiesUsecaesHash() => r'494ebb70bf1f117b69f1dcc492591ca67f21118e';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
