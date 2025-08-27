// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonNotifier)
const appCctvPersonNotifierProvider = AppCctvPersonNotifierFamily._();

final class AppCctvPersonNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonNotifier,
          AsyncValue<TResponse<Person>?>
        > {
  const AppCctvPersonNotifierProvider._({
    required AppCctvPersonNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'appCctvPersonNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonNotifierHash();

  @override
  String toString() {
    return r'appCctvPersonNotifierProvider'
        ''
        '($argument)';
  }

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

  @override
  bool operator ==(Object other) {
    return other is AppCctvPersonNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appCctvPersonNotifierHash() =>
    r'efc408abac66128dd3c2a7baa8b3b724a0332203';

final class AppCctvPersonNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AppCctvPersonNotifier,
          AsyncValue<TResponse<Person>?>,
          AsyncValue<TResponse<Person>?>,
          AsyncValue<TResponse<Person>?>,
          String
        > {
  const AppCctvPersonNotifierFamily._()
    : super(
        retry: null,
        name: r'appCctvPersonNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  AppCctvPersonNotifierProvider call(String personId) =>
      AppCctvPersonNotifierProvider._(argument: personId, from: this);

  @override
  String toString() => r'appCctvPersonNotifierProvider';
}

abstract class _$AppCctvPersonNotifier
    extends $Notifier<AsyncValue<TResponse<Person>?>> {
  late final _$args = ref.$arg as String;
  String get personId => _$args;

  AsyncValue<TResponse<Person>?> build(String personId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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
