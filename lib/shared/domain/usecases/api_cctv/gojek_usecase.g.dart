// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gojek_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(gojekUsecase)
const gojekUsecaseProvider = GojekUsecaseProvider._();

final class GojekUsecaseProvider
    extends $FunctionalProvider<GojekUsecase, GojekUsecase, GojekUsecase>
    with $Provider<GojekUsecase> {
  const GojekUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gojekUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gojekUsecaseHash();

  @$internal
  @override
  $ProviderElement<GojekUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GojekUsecase create(Ref ref) {
    return gojekUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GojekUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GojekUsecase>(value),
    );
  }
}

String _$gojekUsecaseHash() => r'115cbeeb5ab48ff1707e4bd019cd1b7664727a1a';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
