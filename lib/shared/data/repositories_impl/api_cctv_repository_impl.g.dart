// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_cctv_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(apiCctvRepository)
const apiCctvRepositoryProvider = ApiCctvRepositoryProvider._();

final class ApiCctvRepositoryProvider
    extends
        $FunctionalProvider<
          ApiCctvRepository,
          ApiCctvRepository,
          ApiCctvRepository
        >
    with $Provider<ApiCctvRepository> {
  const ApiCctvRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apiCctvRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apiCctvRepositoryHash();

  @$internal
  @override
  $ProviderElement<ApiCctvRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ApiCctvRepository create(Ref ref) {
    return apiCctvRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApiCctvRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApiCctvRepository>(value),
    );
  }
}

String _$apiCctvRepositoryHash() => r'cccd2600a064c06b320ea98905469d11433e8dea';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
