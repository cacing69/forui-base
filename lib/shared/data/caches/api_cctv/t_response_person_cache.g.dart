// GENERATED CODE - DO NOT MODIFY BY HAND

part of 't_response_person_cache.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(tResponsePersonCacheRef)
const tResponsePersonCacheRefProvider = TResponsePersonCacheRefProvider._();

final class TResponsePersonCacheRefProvider
    extends
        $FunctionalProvider<
          TResponsePersonCache,
          TResponsePersonCache,
          TResponsePersonCache
        >
    with $Provider<TResponsePersonCache> {
  const TResponsePersonCacheRefProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tResponsePersonCacheRefProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tResponsePersonCacheRefHash();

  @$internal
  @override
  $ProviderElement<TResponsePersonCache> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TResponsePersonCache create(Ref ref) {
    return tResponsePersonCacheRef(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TResponsePersonCache value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TResponsePersonCache>(value),
    );
  }
}

String _$tResponsePersonCacheRefHash() =>
    r'abb9e470f95e8066c0b707ca4c49267ce8285226';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
