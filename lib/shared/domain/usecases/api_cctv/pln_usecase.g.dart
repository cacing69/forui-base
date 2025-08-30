// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pln_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(plnUsecase)
const plnUsecaseProvider = PlnUsecaseProvider._();

final class PlnUsecaseProvider
    extends $FunctionalProvider<PlnUsecase, PlnUsecase, PlnUsecase>
    with $Provider<PlnUsecase> {
  const PlnUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'plnUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$plnUsecaseHash();

  @$internal
  @override
  $ProviderElement<PlnUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PlnUsecase create(Ref ref) {
    return plnUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlnUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlnUsecase>(value),
    );
  }
}

String _$plnUsecaseHash() => r'ce05544f5902835ac014a68a641b76cf83c9f709';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
