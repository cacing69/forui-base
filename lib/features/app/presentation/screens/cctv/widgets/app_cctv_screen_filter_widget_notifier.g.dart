// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_screen_filter_widget_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvScreenFilterWidgetNotifier)
const appCctvScreenFilterWidgetNotifierProvider =
    AppCctvScreenFilterWidgetNotifierProvider._();

final class AppCctvScreenFilterWidgetNotifierProvider
    extends
        $NotifierProvider<
          AppCctvScreenFilterWidgetNotifier,
          AppCctvScreenFilterWidgetState
        > {
  const AppCctvScreenFilterWidgetNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvScreenFilterWidgetNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$appCctvScreenFilterWidgetNotifierHash();

  @$internal
  @override
  AppCctvScreenFilterWidgetNotifier create() =>
      AppCctvScreenFilterWidgetNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppCctvScreenFilterWidgetState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppCctvScreenFilterWidgetState>(
        value,
      ),
    );
  }
}

String _$appCctvScreenFilterWidgetNotifierHash() =>
    r'b8c9d8d90d61e3c2f27c4c62d505c4f79b8a9f40';

abstract class _$AppCctvScreenFilterWidgetNotifier
    extends $Notifier<AppCctvScreenFilterWidgetState> {
  AppCctvScreenFilterWidgetState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AppCctvScreenFilterWidgetState,
              AppCctvScreenFilterWidgetState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AppCctvScreenFilterWidgetState,
                AppCctvScreenFilterWidgetState
              >,
              AppCctvScreenFilterWidgetState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
