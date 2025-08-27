// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(personUsecase)
const personUsecaseProvider = PersonUsecaseProvider._();

final class PersonUsecaseProvider
    extends $FunctionalProvider<PersonUsecase, PersonUsecase, PersonUsecase>
    with $Provider<PersonUsecase> {
  const PersonUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'personUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$personUsecaseHash();

  @$internal
  @override
  $ProviderElement<PersonUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PersonUsecase create(Ref ref) {
    return personUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PersonUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PersonUsecase>(value),
    );
  }
}

String _$personUsecaseHash() => r'd5f60f89e7bddd9624c93bc37fe4c6ecf180732a';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
