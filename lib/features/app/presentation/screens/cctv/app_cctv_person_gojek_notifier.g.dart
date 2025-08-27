// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_gojek_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonGojekNotifier)
const appCctvPersonGojekNotifierProvider =
    AppCctvPersonGojekNotifierProvider._();

final class AppCctvPersonGojekNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonGojekNotifier,
          AsyncValue<TResponse<List<Gojek>>?>
        > {
  const AppCctvPersonGojekNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvPersonGojekNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonGojekNotifierHash();

  @$internal
  @override
  AppCctvPersonGojekNotifier create() => AppCctvPersonGojekNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Gojek>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<TResponse<List<Gojek>>?>>(
        value,
      ),
    );
  }
}

String _$appCctvPersonGojekNotifierHash() =>
    r'b88dbc0eb37243d7292f5116bcb14545632fcd8f';

abstract class _$AppCctvPersonGojekNotifier
    extends $Notifier<AsyncValue<TResponse<List<Gojek>>?>> {
  AsyncValue<TResponse<List<Gojek>>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<Gojek>>?>,
              AsyncValue<TResponse<List<Gojek>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<Gojek>>?>,
                AsyncValue<TResponse<List<Gojek>>?>
              >,
              AsyncValue<TResponse<List<Gojek>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
