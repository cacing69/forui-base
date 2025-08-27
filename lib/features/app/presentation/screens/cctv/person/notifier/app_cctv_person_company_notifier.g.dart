// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_person_company_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvPersonCompanyNotifier)
const appCctvPersonCompanyNotifierProvider =
    AppCctvPersonCompanyNotifierFamily._();

final class AppCctvPersonCompanyNotifierProvider
    extends
        $NotifierProvider<
          AppCctvPersonCompanyNotifier,
          AsyncValue<TResponse<List<Company>>?>
        > {
  const AppCctvPersonCompanyNotifierProvider._({
    required AppCctvPersonCompanyNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'appCctvPersonCompanyNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$appCctvPersonCompanyNotifierHash();

  @override
  String toString() {
    return r'appCctvPersonCompanyNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  AppCctvPersonCompanyNotifier create() => AppCctvPersonCompanyNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TResponse<List<Company>>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<TResponse<List<Company>>?>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AppCctvPersonCompanyNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appCctvPersonCompanyNotifierHash() =>
    r'8f19269e878d28be49f564ddd613f50dea9cf9ae';

final class AppCctvPersonCompanyNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AppCctvPersonCompanyNotifier,
          AsyncValue<TResponse<List<Company>>?>,
          AsyncValue<TResponse<List<Company>>?>,
          AsyncValue<TResponse<List<Company>>?>,
          String
        > {
  const AppCctvPersonCompanyNotifierFamily._()
    : super(
        retry: null,
        name: r'appCctvPersonCompanyNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  AppCctvPersonCompanyNotifierProvider call(String personId) =>
      AppCctvPersonCompanyNotifierProvider._(argument: personId, from: this);

  @override
  String toString() => r'appCctvPersonCompanyNotifierProvider';
}

abstract class _$AppCctvPersonCompanyNotifier
    extends $Notifier<AsyncValue<TResponse<List<Company>>?>> {
  late final _$args = ref.$arg as String;
  String get personId => _$args;

  AsyncValue<TResponse<List<Company>>?> build(String personId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TResponse<List<Company>>?>,
              AsyncValue<TResponse<List<Company>>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TResponse<List<Company>>?>,
                AsyncValue<TResponse<List<Company>>?>
              >,
              AsyncValue<TResponse<List<Company>>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
