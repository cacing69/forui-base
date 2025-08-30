// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ConnectionService)
const connectionServiceProvider = ConnectionServiceProvider._();

final class ConnectionServiceProvider
    extends $NotifierProvider<ConnectionService, void> {
  const ConnectionServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'connectionServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$connectionServiceHash();

  @$internal
  @override
  ConnectionService create() => ConnectionService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$connectionServiceHash() => r'78679878c8f31567062682d51ddfd0fbe952618c';

abstract class _$ConnectionService extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
