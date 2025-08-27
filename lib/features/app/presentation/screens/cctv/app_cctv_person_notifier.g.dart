// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonNotifier)
const appCctvPersonNotifierProvider = AppCctvPersonNotifierProvider._();

final class AppCctvPersonNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonNotifier,
          AsyncValue<TResponse<Person>?>
        > {
  const AppCctvPersonNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvPersonNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonNotifierHash();

  @$internal
  @override
  AppCctvPersonNotifier create() => AppCctvPersonNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<Person>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<TResponse<Person>?>>(
        value,
      ),
    );
  }
}

String _$appCctvPersonNotifierHash() =>
    r'16a50815196bf22568f04794ac7039f1a5568cfc';

abstract class _$AppCctvPersonNotifier
    extends $Notifier<AsyncValue<TResponse<Person>?>> {
  AsyncValue<TResponse<Person>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<Person>?>,
              AsyncValue<TResponse<Person>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<Person>?>,
                AsyncValue<TResponse<Person>?>
              >,
              AsyncValue<TResponse<Person>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
