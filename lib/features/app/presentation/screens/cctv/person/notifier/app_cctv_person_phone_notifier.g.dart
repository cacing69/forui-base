// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_phone_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonPhoneNotifier)
const appCctvPersonPhoneNotifierProvider = AppCctvPersonPhoneNotifierFamily._();

final class AppCctvPersonPhoneNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonPhoneNotifier,
          AsyncValue<TResponse<List<Phone>>?>
        > {
  const AppCctvPersonPhoneNotifierProvider._({
    required AppCctvPersonPhoneNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'appCctvPersonPhoneNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonPhoneNotifierHash();

  @override
  String toString() {
    return r'appCctvPersonPhoneNotifierProvider'
        ''
        '($argument)';
  }

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

  @override
  bool operator ==(Object other) {
    return other is AppCctvPersonPhoneNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appCctvPersonPhoneNotifierHash() =>
    r'c4c050521d503031407cbee38cb1989fa25630c9';

final class AppCctvPersonPhoneNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AppCctvPersonPhoneNotifier,
          AsyncValue<TResponse<List<Phone>>?>,
          AsyncValue<TResponse<List<Phone>>?>,
          AsyncValue<TResponse<List<Phone>>?>,
          String
        > {
  const AppCctvPersonPhoneNotifierFamily._()
    : super(
        retry: null,
        name: r'appCctvPersonPhoneNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  AppCctvPersonPhoneNotifierProvider call(String personId) =>
      AppCctvPersonPhoneNotifierProvider._(argument: personId, from: this);

  @override
  String toString() => r'appCctvPersonPhoneNotifierProvider';
}

abstract class _$AppCctvPersonPhoneNotifier
    extends $Notifier<AsyncValue<TResponse<List<Phone>>?>> {
  late final _$args = ref.$arg as String;
  String get personId => _$args;

  AsyncValue<TResponse<List<Phone>>?> build(String personId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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
