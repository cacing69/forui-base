// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cctv_screen_list_resident_filter_widget_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppCctvScreenListResidentFilterWidgetNotifier)
const appCctvScreenListResidentFilterWidgetNotifierProvider =
    AppCctvScreenListResidentFilterWidgetNotifierProvider._();

final class AppCctvScreenListResidentFilterWidgetNotifierProvider
    extends
        $NotifierProvider<
          AppCctvScreenListResidentFilterWidgetNotifier,
          AppCctvScreenListResidentFilterWidgetState
        > {
  const AppCctvScreenListResidentFilterWidgetNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appCctvScreenListResidentFilterWidgetNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$appCctvScreenListResidentFilterWidgetNotifierHash();

  @$internal
  @override
  AppCctvScreenListResidentFilterWidgetNotifier create() =>
      AppCctvScreenListResidentFilterWidgetNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppCctvScreenListResidentFilterWidgetState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AppCctvScreenListResidentFilterWidgetState>(value),
    );
  }
}

String _$appCctvScreenListResidentFilterWidgetNotifierHash() =>
    r'05876b8c216760b6c695450c363ba28dc877f3b9';

abstract class _$AppCctvScreenListResidentFilterWidgetNotifier
    extends $Notifier<AppCctvScreenListResidentFilterWidgetState> {
  AppCctvScreenListResidentFilterWidgetState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AppCctvScreenListResidentFilterWidgetState,
              AppCctvScreenListResidentFilterWidgetState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AppCctvScreenListResidentFilterWidgetState,
                AppCctvScreenListResidentFilterWidgetState
              >,
              AppCctvScreenListResidentFilterWidgetState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
