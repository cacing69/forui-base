// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(phoneUsecase)
const phoneUsecaseProvider = PhoneUsecaseProvider._();

final class PhoneUsecaseProvider
    extends $FunctionalProvider<PhoneUsecase, PhoneUsecase, PhoneUsecase>
    with $Provider<PhoneUsecase> {
  const PhoneUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'phoneUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$phoneUsecaseHash();

  @$internal
  @override
  $ProviderElement<PhoneUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PhoneUsecase create(Ref ref) {
    return phoneUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PhoneUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PhoneUsecase>(value),
    );
  }
}

String _$phoneUsecaseHash() => r'9a9520cb6e0ace17610db63d13f2d97bbd3f00f2';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
