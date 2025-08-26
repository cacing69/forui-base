// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_query_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvQueryNotifier)
const appCctvQueryNotifierProvider = AppCctvQueryNotifierProvider._();

final class AppCctvQueryNotifierProvider
    extends $NotifierProvider<AppCctvQueryNotifier, ResidentQuery> {
  const AppCctvQueryNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvQueryNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appCctvQueryNotifierHash();

  @$internal
  @override
  AppCctvQueryNotifier create() => AppCctvQueryNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ResidentQuery value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ResidentQuery>(value),
    );
  }
}

String _$appCctvQueryNotifierHash() =>
    r'359eb99463b64f716cb26767a73d0a31052c45ae';

abstract class _$AppCctvQueryNotifier extends $Notifier<ResidentQuery> {
  ResidentQuery build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ResidentQuery, ResidentQuery>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ResidentQuery, ResidentQuery>,
              ResidentQuery,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
