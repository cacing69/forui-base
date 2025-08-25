// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_nominatim_search_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(BlockNominatimSearchNotifier)
const blockNominatimSearchNotifierProvider =
    BlockNominatimSearchNotifierProvider._();

final class BlockNominatimSearchNotifierProvider
    extends
        $NotifierProvider<
          BlockNominatimSearchNotifier,
          AsyncValue<List<SearchResponse>?>
        > {
  const BlockNominatimSearchNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'blockNominatimSearchNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$blockNominatimSearchNotifierHash();

  @$internal
  @override
  BlockNominatimSearchNotifier create() => BlockNominatimSearchNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<SearchResponse>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<SearchResponse>?>>(
        value,
      ),
    );
  }
}

String _$blockNominatimSearchNotifierHash() =>
    r'67b97859a9b4511c04de2af6edf8005f00fe23b9';

abstract class _$BlockNominatimSearchNotifier
    extends $Notifier<AsyncValue<List<SearchResponse>?>> {
  AsyncValue<List<SearchResponse>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<SearchResponse>?>,
              AsyncValue<List<SearchResponse>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<SearchResponse>?>,
                AsyncValue<List<SearchResponse>?>
              >,
              AsyncValue<List<SearchResponse>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
