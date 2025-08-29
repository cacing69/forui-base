// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger_ref.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(loggerRef)
const loggerRefProvider = LoggerRefProvider._();

final class LoggerRefProvider
    extends $FunctionalProvider<Logger, Logger, Logger>
    with $Provider<Logger> {
  const LoggerRefProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loggerRefProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loggerRefHash();

  @$internal
  @override
  $ProviderElement<Logger> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Logger create(Ref ref) {
    return loggerRef(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Logger value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Logger>(value),
    );
  }
}

String _$loggerRefHash() => r'c2be0a8aa54f8359d80e75d436f817561d8b5671';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
