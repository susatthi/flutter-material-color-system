// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tonal_palette.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tonalPaletteCollectionsHash() =>
    r'e7b69860eb17cd52b2274752080392757dcebd16';

/// See also [tonalPaletteCollections].
@ProviderFor(tonalPaletteCollections)
final tonalPaletteCollectionsProvider =
    AutoDisposeProvider<List<TonalPaletteCollection>>.internal(
  tonalPaletteCollections,
  name: r'tonalPaletteCollectionsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tonalPaletteCollectionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TonalPaletteCollectionsRef
    = AutoDisposeProviderRef<List<TonalPaletteCollection>>;
String _$tonalPaletteTitleHash() => r'fa672a5b4edae6081a0cad1f41bdc2bf2e9291c1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [tonalPaletteTitle].
@ProviderFor(tonalPaletteTitle)
const tonalPaletteTitleProvider = TonalPaletteTitleFamily();

/// See also [tonalPaletteTitle].
class TonalPaletteTitleFamily extends Family<String?> {
  /// See also [tonalPaletteTitle].
  const TonalPaletteTitleFamily();

  /// See also [tonalPaletteTitle].
  TonalPaletteTitleProvider call({
    required Color color,
  }) {
    return TonalPaletteTitleProvider(
      color: color,
    );
  }

  @override
  TonalPaletteTitleProvider getProviderOverride(
    covariant TonalPaletteTitleProvider provider,
  ) {
    return call(
      color: provider.color,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tonalPaletteTitleProvider';
}

/// See also [tonalPaletteTitle].
class TonalPaletteTitleProvider extends AutoDisposeProvider<String?> {
  /// See also [tonalPaletteTitle].
  TonalPaletteTitleProvider({
    required Color color,
  }) : this._internal(
          (ref) => tonalPaletteTitle(
            ref as TonalPaletteTitleRef,
            color: color,
          ),
          from: tonalPaletteTitleProvider,
          name: r'tonalPaletteTitleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tonalPaletteTitleHash,
          dependencies: TonalPaletteTitleFamily._dependencies,
          allTransitiveDependencies:
              TonalPaletteTitleFamily._allTransitiveDependencies,
          color: color,
        );

  TonalPaletteTitleProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.color,
  }) : super.internal();

  final Color color;

  @override
  Override overrideWith(
    String? Function(TonalPaletteTitleRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TonalPaletteTitleProvider._internal(
        (ref) => create(ref as TonalPaletteTitleRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        color: color,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String?> createElement() {
    return _TonalPaletteTitleProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TonalPaletteTitleProvider && other.color == color;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, color.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TonalPaletteTitleRef on AutoDisposeProviderRef<String?> {
  /// The parameter `color` of this provider.
  Color get color;
}

class _TonalPaletteTitleProviderElement
    extends AutoDisposeProviderElement<String?> with TonalPaletteTitleRef {
  _TonalPaletteTitleProviderElement(super.provider);

  @override
  Color get color => (origin as TonalPaletteTitleProvider).color;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
