// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nominatim_http_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(nominatimHttpClient)
const nominatimHttpClientProvider = NominatimHttpClientProvider._();

final class NominatimHttpClientProvider
    extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const NominatimHttpClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nominatimHttpClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nominatimHttpClientHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return nominatimHttpClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$nominatimHttpClientHash() =>
    r'41cf8625a083e7438442a97f43eed0e99900973c';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
