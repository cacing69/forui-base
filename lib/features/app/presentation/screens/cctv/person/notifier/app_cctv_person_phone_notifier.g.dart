// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_phone_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonPhoneNotifier)
const appCctvPersonPhoneNotifierProvider =
    AppCctvPersonPhoneNotifierProvider._();

final class AppCctvPersonPhoneNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonPhoneNotifier,
          AsyncValue<TResponse<List<Phone>>?>
        > {
  const AppCctvPersonPhoneNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvPersonPhoneNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonPhoneNotifierHash();

  @$internal
  @override
  AppCctvPersonPhoneNotifier create() => AppCctvPersonPhoneNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Phone>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<TResponse<List<Phone>>?>>(
        value,
      ),
    );
  }
}

String _$appCctvPersonPhoneNotifierHash() =>
    r'1ad94df6c7accd046fe2de477d11d337b5a2f2b8';

abstract class _$AppCctvPersonPhoneNotifier
    extends $Notifier<AsyncValue<TResponse<List<Phone>>?>> {
  AsyncValue<TResponse<List<Phone>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<Phone>>?>,
              AsyncValue<TResponse<List<Phone>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<Phone>>?>,
                AsyncValue<TResponse<List<Phone>>?>
              >,
              AsyncValue<TResponse<List<Phone>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
