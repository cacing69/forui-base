// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_gojek_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonGojekNotifier)
const appCctvPersonGojekNotifierProvider = AppCctvPersonGojekNotifierFamily._();

final class AppCctvPersonGojekNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonGojekNotifier,
          AsyncValue<TResponse<List<Gojek>>?>
        > {
  const AppCctvPersonGojekNotifierProvider._({
    required AppCctvPersonGojekNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'appCctvPersonGojekNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonGojekNotifierHash();

  @override
  String toString() {
    return r'appCctvPersonGojekNotifierProvider'
        ''
        '($argument)';
  }

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

  @override
  bool operator ==(Object other) {
    return other is AppCctvPersonGojekNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appCctvPersonGojekNotifierHash() =>
    r'0965c02f05d392e494dfe4c4fc0969a2934463ef';

final class AppCctvPersonGojekNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AppCctvPersonGojekNotifier,
          AsyncValue<TResponse<List<Gojek>>?>,
          AsyncValue<TResponse<List<Gojek>>?>,
          AsyncValue<TResponse<List<Gojek>>?>,
          String
        > {
  const AppCctvPersonGojekNotifierFamily._()
    : super(
        retry: null,
        name: r'appCctvPersonGojekNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  AppCctvPersonGojekNotifierProvider call(String personId) =>
      AppCctvPersonGojekNotifierProvider._(argument: personId, from: this);

  @override
  String toString() => r'appCctvPersonGojekNotifierProvider';
}

abstract class _$AppCctvPersonGojekNotifier
    extends $Notifier<AsyncValue<TResponse<List<Gojek>>?>> {
  late final _$args = ref.$arg as String;
  String get personId => _$args;

  AsyncValue<TResponse<List<Gojek>>?> build(String personId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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
