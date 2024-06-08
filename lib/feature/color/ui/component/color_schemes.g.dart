// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_schemes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paletteItemHash() => r'e08f3f3ede2cb627b19808e1f076f4ec03b6fe5f';

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
    required ColorSchemeKind kind,
  }) {
    return _PaletteItemProvider(
      kind: kind,
    );
  }

  @override
  _PaletteItemProvider getProviderOverride(
    covariant _PaletteItemProvider provider,
  ) {
    return call(
      kind: provider.kind,
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
    required ColorSchemeKind kind,
  }) : this._internal(
          (ref) => _paletteItem(
            ref as _PaletteItemRef,
            kind: kind,
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
        );

  _PaletteItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.kind,
  }) : super.internal();

  final ColorSchemeKind kind;

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
      ),
    );
  }

  @override
  AutoDisposeProviderElement<PaletteItem> createElement() {
    return _PaletteItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _PaletteItemProvider && other.kind == kind;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, kind.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _PaletteItemRef on AutoDisposeProviderRef<PaletteItem> {
  /// The parameter `kind` of this provider.
  ColorSchemeKind get kind;
}

class _PaletteItemProviderElement
    extends AutoDisposeProviderElement<PaletteItem> with _PaletteItemRef {
  _PaletteItemProviderElement(super.provider);

  @override
  ColorSchemeKind get kind => (origin as _PaletteItemProvider).kind;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
