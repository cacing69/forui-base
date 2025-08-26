// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_cctv_http_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(apiCctvHttpClient)
const apiCctvHttpClientProvider = ApiCctvHttpClientProvider._();

final class ApiCctvHttpClientProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const ApiCctvHttpClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apiCctvHttpClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apiCctvHttpClientHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return apiCctvHttpClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$apiCctvHttpClientHash() => r'f3aaaa42090386e7f02ccf6d173ef60a87d4f5b1';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
