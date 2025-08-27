// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_pln_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonPlnNotifier)
const appCctvPersonPlnNotifierProvider = AppCctvPersonPlnNotifierFamily._();

final class AppCctvPersonPlnNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonPlnNotifier,
          AsyncValue<TResponse<List<Pln>>?>
        > {
  const AppCctvPersonPlnNotifierProvider._({
    required AppCctvPersonPlnNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'appCctvPersonPlnNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonPlnNotifierHash();

  @override
  String toString() {
    return r'appCctvPersonPlnNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  AppCctvPersonPlnNotifier create() => AppCctvPersonPlnNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Pln>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<TResponse<List<Pln>>?>>(
        value,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AppCctvPersonPlnNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appCctvPersonPlnNotifierHash() =>
    r'f2f61805b95642f3280f212c2c639bd145b2d1e9';

final class AppCctvPersonPlnNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AppCctvPersonPlnNotifier,
          AsyncValue<TResponse<List<Pln>>?>,
          AsyncValue<TResponse<List<Pln>>?>,
          AsyncValue<TResponse<List<Pln>>?>,
          String
        > {
  const AppCctvPersonPlnNotifierFamily._()
    : super(
        retry: null,
        name: r'appCctvPersonPlnNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  AppCctvPersonPlnNotifierProvider call(String personId) =>
      AppCctvPersonPlnNotifierProvider._(argument: personId, from: this);

  @override
  String toString() => r'appCctvPersonPlnNotifierProvider';
}

abstract class _$AppCctvPersonPlnNotifier
    extends $Notifier<AsyncValue<TResponse<List<Pln>>?>> {
  late final _$args = ref.$arg as String;
  String get personId => _$args;

  AsyncValue<TResponse<List<Pln>>?> build(String personId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<Pln>>?>,
              AsyncValue<TResponse<List<Pln>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<Pln>>?>,
                AsyncValue<TResponse<List<Pln>>?>
              >,
              AsyncValue<TResponse<List<Pln>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
