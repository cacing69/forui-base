// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_location_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(searchLocationUsecase)
const searchLocationUsecaseProvider = SearchLocationUsecaseProvider._();

final class SearchLocationUsecaseProvider
    extends
        $FunctionalProvider<
          SearchLocationUsecase,
          SearchLocationUsecase,
          SearchLocationUsecase
        >
    with $Provider<SearchLocationUsecase> {
  const SearchLocationUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchLocationUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchLocationUsecaseHash();

  @$internal
  @override
  $ProviderElement<SearchLocationUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SearchLocationUsecase create(Ref ref) {
    return searchLocationUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchLocationUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchLocationUsecase>(value),
    );
  }
}

String _$searchLocationUsecaseHash() =>
    r'5b97605b11b6c067e2b5b0f885a99c7b9d8b4420';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
