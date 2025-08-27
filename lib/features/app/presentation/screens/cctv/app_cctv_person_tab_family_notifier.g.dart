// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_tab_family_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonTabFamilyNotifier)
const appCctvPersonTabFamilyNotifierProvider =
    AppCctvPersonTabFamilyNotifierProvider._();

final class AppCctvPersonTabFamilyNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonTabFamilyNotifier,
          AsyncValue<TResponse<Person>?>
        > {
  const AppCctvPersonTabFamilyNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvPersonTabFamilyNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonTabFamilyNotifierHash();

  @$internal
  @override
  AppCctvPersonTabFamilyNotifier create() => AppCctvPersonTabFamilyNotifier();

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

String _$appCctvPersonTabFamilyNotifierHash() =>
    r'f43e76303758407a9073a88473aef9f7daac86e7';

abstract class _$AppCctvPersonTabFamilyNotifier
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
