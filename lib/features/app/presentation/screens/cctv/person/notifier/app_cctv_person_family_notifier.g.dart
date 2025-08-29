// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_family_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonFamilyNotifier)
const appCctvPersonFamilyNotifierProvider =
    AppCctvPersonFamilyNotifierProvider._();

final class AppCctvPersonFamilyNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonFamilyNotifier,
          AsyncValue<TResponse<List<Family>>?>
        > {
  const AppCctvPersonFamilyNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvPersonFamilyNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonFamilyNotifierHash();

  @$internal
  @override
  AppCctvPersonFamilyNotifier create() => AppCctvPersonFamilyNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Family>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<TResponse<List<Family>>?>>(value),
    );
  }
}

String _$appCctvPersonFamilyNotifierHash() =>
    r'2a8b4dd42617065cd7daf880317216a0940bb5fb';

abstract class _$AppCctvPersonFamilyNotifier
    extends $Notifier<AsyncValue<TResponse<List<Family>>?>> {
  AsyncValue<TResponse<List<Family>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<Family>>?>,
              AsyncValue<TResponse<List<Family>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<Family>>?>,
                AsyncValue<TResponse<List<Family>>?>
              >,
              AsyncValue<TResponse<List<Family>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
