// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nominatim_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(nominatimRepository)
const nominatimRepositoryProvider = NominatimRepositoryProvider._();

final class NominatimRepositoryProvider
    extends
        $FunctionalProvider<
          NominatimRepository,
          NominatimRepository,
          NominatimRepository
        >
    with $Provider<NominatimRepository> {
  const NominatimRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nominatimRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nominatimRepositoryHash();

  @$internal
  @override
  $ProviderElement<NominatimRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NominatimRepository create(Ref ref) {
    return nominatimRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NominatimRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NominatimRepository>(value),
    );
  }
}

String _$nominatimRepositoryHash() =>
    r'2ffc98062a46201ef9be8e2f44acea2c31ff2bf3';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
