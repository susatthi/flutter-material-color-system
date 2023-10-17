// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_scheme_kind.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$colorSchemeColorHash() => r'd26b3e9db1645501dd325540228b069061d33aa8';

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

/// See also [colorSchemeColor].
@ProviderFor(colorSchemeColor)
const colorSchemeColorProvider = ColorSchemeColorFamily();

/// See also [colorSchemeColor].
class ColorSchemeColorFamily extends Family<Color> {
  /// See also [colorSchemeColor].
  const ColorSchemeColorFamily();

  /// See also [colorSchemeColor].
  ColorSchemeColorProvider call({
    required ColorSchemeKind kind,
  }) {
    return ColorSchemeColorProvider(
      kind: kind,
    );
  }

  @override
  ColorSchemeColorProvider getProviderOverride(
    covariant ColorSchemeColorProvider provider,
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
  String? get name => r'colorSchemeColorProvider';
}

/// See also [colorSchemeColor].
class ColorSchemeColorProvider extends AutoDisposeProvider<Color> {
  /// See also [colorSchemeColor].
  ColorSchemeColorProvider({
    required ColorSchemeKind kind,
  }) : this._internal(
          (ref) => colorSchemeColor(
            ref as ColorSchemeColorRef,
            kind: kind,
          ),
          from: colorSchemeColorProvider,
          name: r'colorSchemeColorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$colorSchemeColorHash,
          dependencies: ColorSchemeColorFamily._dependencies,
          allTransitiveDependencies:
              ColorSchemeColorFamily._allTransitiveDependencies,
          kind: kind,
        );

  ColorSchemeColorProvider._internal(
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
    Color Function(ColorSchemeColorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ColorSchemeColorProvider._internal(
        (ref) => create(ref as ColorSchemeColorRef),
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
  AutoDisposeProviderElement<Color> createElement() {
    return _ColorSchemeColorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ColorSchemeColorProvider && other.kind == kind;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, kind.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ColorSchemeColorRef on AutoDisposeProviderRef<Color> {
  /// The parameter `kind` of this provider.
  ColorSchemeKind get kind;
}

class _ColorSchemeColorProviderElement extends AutoDisposeProviderElement<Color>
    with ColorSchemeColorRef {
  _ColorSchemeColorProviderElement(super.provider);

  @override
  ColorSchemeKind get kind => (origin as ColorSchemeColorProvider).kind;
}

String _$colorSchemeColorNameHash() =>
    r'68b33d5abae3e13281f7d9e1274a8aa9c5c9e256';

/// See also [colorSchemeColorName].
@ProviderFor(colorSchemeColorName)
const colorSchemeColorNameProvider = ColorSchemeColorNameFamily();

/// See also [colorSchemeColorName].
class ColorSchemeColorNameFamily extends Family<String> {
  /// See also [colorSchemeColorName].
  const ColorSchemeColorNameFamily();

  /// See also [colorSchemeColorName].
  ColorSchemeColorNameProvider call({
    required ColorSchemeKind kind,
  }) {
    return ColorSchemeColorNameProvider(
      kind: kind,
    );
  }

  @override
  ColorSchemeColorNameProvider getProviderOverride(
    covariant ColorSchemeColorNameProvider provider,
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
  String? get name => r'colorSchemeColorNameProvider';
}

/// See also [colorSchemeColorName].
class ColorSchemeColorNameProvider extends AutoDisposeProvider<String> {
  /// See also [colorSchemeColorName].
  ColorSchemeColorNameProvider({
    required ColorSchemeKind kind,
  }) : this._internal(
          (ref) => colorSchemeColorName(
            ref as ColorSchemeColorNameRef,
            kind: kind,
          ),
          from: colorSchemeColorNameProvider,
          name: r'colorSchemeColorNameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$colorSchemeColorNameHash,
          dependencies: ColorSchemeColorNameFamily._dependencies,
          allTransitiveDependencies:
              ColorSchemeColorNameFamily._allTransitiveDependencies,
          kind: kind,
        );

  ColorSchemeColorNameProvider._internal(
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
    String Function(ColorSchemeColorNameRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ColorSchemeColorNameProvider._internal(
        (ref) => create(ref as ColorSchemeColorNameRef),
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
  AutoDisposeProviderElement<String> createElement() {
    return _ColorSchemeColorNameProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ColorSchemeColorNameProvider && other.kind == kind;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, kind.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ColorSchemeColorNameRef on AutoDisposeProviderRef<String> {
  /// The parameter `kind` of this provider.
  ColorSchemeKind get kind;
}

class _ColorSchemeColorNameProviderElement
    extends AutoDisposeProviderElement<String> with ColorSchemeColorNameRef {
  _ColorSchemeColorNameProviderElement(super.provider);

  @override
  ColorSchemeKind get kind => (origin as ColorSchemeColorNameProvider).kind;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
