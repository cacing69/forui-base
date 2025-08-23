// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_app_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ConfigAppNotifier)
const configAppNotifierProvider = ConfigAppNotifierProvider._();

final class ConfigAppNotifierProvider
    extends $NotifierProvider<ConfigAppNotifier, ConfigApp> {
  const ConfigAppNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'configAppNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$configAppNotifierHash();

  @$internal
  @override
  ConfigAppNotifier create() => ConfigAppNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConfigApp value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConfigApp>(value),
    );
  }
}

String _$configAppNotifierHash() => r'd5d69d1b99065eb919b9553f9d75108cb2b5d4df';

abstract class _$ConfigAppNotifier extends $Notifier<ConfigApp> {
  ConfigApp build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ConfigApp, ConfigApp>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ConfigApp, ConfigApp>,
              ConfigApp,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
