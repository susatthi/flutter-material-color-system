// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tonal_palette_kind.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tonalPaletteMaterialColorHash() =>
    r'ed137f3a5f5d88e1a7cb72a766c816f39e45d2bb';

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

/// See also [tonalPaletteMaterialColor].
@ProviderFor(tonalPaletteMaterialColor)
const tonalPaletteMaterialColorProvider = TonalPaletteMaterialColorFamily();

/// See also [tonalPaletteMaterialColor].
class TonalPaletteMaterialColorFamily extends Family<MaterialColor> {
  /// See also [tonalPaletteMaterialColor].
  const TonalPaletteMaterialColorFamily();

  /// See also [tonalPaletteMaterialColor].
  TonalPaletteMaterialColorProvider call({
    required TonalPaletteKind kind,
  }) {
    return TonalPaletteMaterialColorProvider(
      kind: kind,
    );
  }

  @override
  TonalPaletteMaterialColorProvider getProviderOverride(
    covariant TonalPaletteMaterialColorProvider provider,
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
  String? get name => r'tonalPaletteMaterialColorProvider';
}

/// See also [tonalPaletteMaterialColor].
class TonalPaletteMaterialColorProvider
    extends AutoDisposeProvider<MaterialColor> {
  /// See also [tonalPaletteMaterialColor].
  TonalPaletteMaterialColorProvider({
    required TonalPaletteKind kind,
  }) : this._internal(
          (ref) => tonalPaletteMaterialColor(
            ref as TonalPaletteMaterialColorRef,
            kind: kind,
          ),
          from: tonalPaletteMaterialColorProvider,
          name: r'tonalPaletteMaterialColorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tonalPaletteMaterialColorHash,
          dependencies: TonalPaletteMaterialColorFamily._dependencies,
          allTransitiveDependencies:
              TonalPaletteMaterialColorFamily._allTransitiveDependencies,
          kind: kind,
        );

  TonalPaletteMaterialColorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.kind,
  }) : super.internal();

  final TonalPaletteKind kind;

  @override
  Override overrideWith(
    MaterialColor Function(TonalPaletteMaterialColorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TonalPaletteMaterialColorProvider._internal(
        (ref) => create(ref as TonalPaletteMaterialColorRef),
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
  AutoDisposeProviderElement<MaterialColor> createElement() {
    return _TonalPaletteMaterialColorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TonalPaletteMaterialColorProvider && other.kind == kind;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, kind.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TonalPaletteMaterialColorRef on AutoDisposeProviderRef<MaterialColor> {
  /// The parameter `kind` of this provider.
  TonalPaletteKind get kind;
}

class _TonalPaletteMaterialColorProviderElement
    extends AutoDisposeProviderElement<MaterialColor>
    with TonalPaletteMaterialColorRef {
  _TonalPaletteMaterialColorProviderElement(super.provider);

  @override
  TonalPaletteKind get kind =>
      (origin as TonalPaletteMaterialColorProvider).kind;
}

String _$tonalPaletteColorHash() => r'861fae12a5e4c2a41e60e76718e7ed2f7efe7ec2';

/// See also [tonalPaletteColor].
@ProviderFor(tonalPaletteColor)
const tonalPaletteColorProvider = TonalPaletteColorFamily();

/// See also [tonalPaletteColor].
class TonalPaletteColorFamily extends Family<Color> {
  /// See also [tonalPaletteColor].
  const TonalPaletteColorFamily();

  /// See also [tonalPaletteColor].
  TonalPaletteColorProvider call({
    required TonalPaletteKind kind,
    required TonalPaletteShade shade,
  }) {
    return TonalPaletteColorProvider(
      kind: kind,
      shade: shade,
    );
  }

  @override
  TonalPaletteColorProvider getProviderOverride(
    covariant TonalPaletteColorProvider provider,
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
  String? get name => r'tonalPaletteColorProvider';
}

/// See also [tonalPaletteColor].
class TonalPaletteColorProvider extends AutoDisposeProvider<Color> {
  /// See also [tonalPaletteColor].
  TonalPaletteColorProvider({
    required TonalPaletteKind kind,
    required TonalPaletteShade shade,
  }) : this._internal(
          (ref) => tonalPaletteColor(
            ref as TonalPaletteColorRef,
            kind: kind,
            shade: shade,
          ),
          from: tonalPaletteColorProvider,
          name: r'tonalPaletteColorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tonalPaletteColorHash,
          dependencies: TonalPaletteColorFamily._dependencies,
          allTransitiveDependencies:
              TonalPaletteColorFamily._allTransitiveDependencies,
          kind: kind,
          shade: shade,
        );

  TonalPaletteColorProvider._internal(
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
    Color Function(TonalPaletteColorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TonalPaletteColorProvider._internal(
        (ref) => create(ref as TonalPaletteColorRef),
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
  AutoDisposeProviderElement<Color> createElement() {
    return _TonalPaletteColorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TonalPaletteColorProvider &&
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

mixin TonalPaletteColorRef on AutoDisposeProviderRef<Color> {
  /// The parameter `kind` of this provider.
  TonalPaletteKind get kind;

  /// The parameter `shade` of this provider.
  TonalPaletteShade get shade;
}

class _TonalPaletteColorProviderElement
    extends AutoDisposeProviderElement<Color> with TonalPaletteColorRef {
  _TonalPaletteColorProviderElement(super.provider);

  @override
  TonalPaletteKind get kind => (origin as TonalPaletteColorProvider).kind;
  @override
  TonalPaletteShade get shade => (origin as TonalPaletteColorProvider).shade;
}

String _$tonalPaletteTitleHash() => r'2c708b16646347b8242a5270cb7251faf66b5e5e';

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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
