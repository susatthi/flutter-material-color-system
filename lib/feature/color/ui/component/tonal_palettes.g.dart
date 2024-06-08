// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tonal_palettes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paletteItemHash() => r'c031740d652eeff40c463ef640ca1ec512d66f3d';

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

/// See also [_paletteItem].
@ProviderFor(_paletteItem)
const _paletteItemProvider = _PaletteItemFamily();

/// See also [_paletteItem].
class _PaletteItemFamily extends Family<PaletteItem> {
  /// See also [_paletteItem].
  const _PaletteItemFamily();

  /// See also [_paletteItem].
  _PaletteItemProvider call({
    required TonalPaletteKind kind,
    required TonalPaletteShade shade,
  }) {
    return _PaletteItemProvider(
      kind: kind,
      shade: shade,
    );
  }

  @override
  _PaletteItemProvider getProviderOverride(
    covariant _PaletteItemProvider provider,
  ) {
    return call(
      kind: provider.kind,
      shade: provider.shade,
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
  String? get name => r'_paletteItemProvider';
}

/// See also [_paletteItem].
class _PaletteItemProvider extends AutoDisposeProvider<PaletteItem> {
  /// See also [_paletteItem].
  _PaletteItemProvider({
    required TonalPaletteKind kind,
    required TonalPaletteShade shade,
  }) : this._internal(
          (ref) => _paletteItem(
            ref as _PaletteItemRef,
            kind: kind,
            shade: shade,
          ),
          from: _paletteItemProvider,
          name: r'_paletteItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paletteItemHash,
          dependencies: _PaletteItemFamily._dependencies,
          allTransitiveDependencies:
              _PaletteItemFamily._allTransitiveDependencies,
          kind: kind,
          shade: shade,
        );

  _PaletteItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.kind,
    required this.shade,
  }) : super.internal();

  final TonalPaletteKind kind;
  final TonalPaletteShade shade;

  @override
  Override overrideWith(
    PaletteItem Function(_PaletteItemRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _PaletteItemProvider._internal(
        (ref) => create(ref as _PaletteItemRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        kind: kind,
        shade: shade,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<PaletteItem> createElement() {
    return _PaletteItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _PaletteItemProvider &&
        other.kind == kind &&
        other.shade == shade;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, kind.hashCode);
    hash = _SystemHash.combine(hash, shade.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _PaletteItemRef on AutoDisposeProviderRef<PaletteItem> {
  /// The parameter `kind` of this provider.
  TonalPaletteKind get kind;

  /// The parameter `shade` of this provider.
  TonalPaletteShade get shade;
}

class _PaletteItemProviderElement
    extends AutoDisposeProviderElement<PaletteItem> with _PaletteItemRef {
  _PaletteItemProviderElement(super.provider);

  @override
  TonalPaletteKind get kind => (origin as _PaletteItemProvider).kind;
  @override
  TonalPaletteShade get shade => (origin as _PaletteItemProvider).shade;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
