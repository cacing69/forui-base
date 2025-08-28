// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_person_data_usecase_pack.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(loadPersonDataUsecasePack)
const loadPersonDataUsecasePackProvider = LoadPersonDataUsecasePackProvider._();

final class LoadPersonDataUsecasePackProvider
    extends
        $FunctionalProvider<
          LoadPersonDataUsecasePack,
          LoadPersonDataUsecasePack,
          LoadPersonDataUsecasePack
        >
    with $Provider<LoadPersonDataUsecasePack> {
  const LoadPersonDataUsecasePackProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadPersonDataUsecasePackProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadPersonDataUsecasePackHash();

  @$internal
  @override
  $ProviderElement<LoadPersonDataUsecasePack> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LoadPersonDataUsecasePack create(Ref ref) {
    return loadPersonDataUsecasePack(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoadPersonDataUsecasePack value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoadPersonDataUsecasePack>(value),
    );
  }
}

String _$loadPersonDataUsecasePackHash() =>
    r'c6bbdf0b66e90843482dd9c1b9e5fcb447ffbd78';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
