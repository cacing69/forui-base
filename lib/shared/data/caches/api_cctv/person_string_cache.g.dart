// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_string_cache.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(personStringCacheRef)
const personStringCacheRefProvider = PersonStringCacheRefProvider._();

final class PersonStringCacheRefProvider
    extends
        $FunctionalProvider<
          PersonStringCache,
          PersonStringCache,
          PersonStringCache
        >
    with $Provider<PersonStringCache> {
  const PersonStringCacheRefProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'personStringCacheRefProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$personStringCacheRefHash();

  @$internal
  @override
  $ProviderElement<PersonStringCache> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PersonStringCache create(Ref ref) {
    return personStringCacheRef(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PersonStringCache value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PersonStringCache>(value),
    );
  }
}

String _$personStringCacheRefHash() =>
    r'3c6612a7a88fc5072ca43e8b9cb02c05d9193454';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
