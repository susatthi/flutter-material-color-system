// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeHash() => r'5332d2820a8cfd8d708628140b5b072ec0558216';

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

/// See also [theme].
@ProviderFor(theme)
const themeProvider = ThemeFamily();

/// See also [theme].
class ThemeFamily extends Family<ThemeData> {
  /// See also [theme].
  const ThemeFamily();

  /// See also [theme].
  ThemeProvider call(
    Brightness brightness,
  ) {
    return ThemeProvider(
      brightness,
    );
  }

  @override
  ThemeProvider getProviderOverride(
    covariant ThemeProvider provider,
  ) {
    return call(
      provider.brightness,
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
  String? get name => r'themeProvider';
}

/// See also [theme].
class ThemeProvider extends AutoDisposeProvider<ThemeData> {
  /// See also [theme].
  ThemeProvider(
    Brightness brightness,
  ) : this._internal(
          (ref) => theme(
            ref as ThemeRef,
            brightness,
          ),
          from: themeProvider,
          name: r'themeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$themeHash,
          dependencies: ThemeFamily._dependencies,
          allTransitiveDependencies: ThemeFamily._allTransitiveDependencies,
          brightness: brightness,
        );

  ThemeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.brightness,
  }) : super.internal();

  final Brightness brightness;

  @override
  Override overrideWith(
    ThemeData Function(ThemeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ThemeProvider._internal(
        (ref) => create(ref as ThemeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        brightness: brightness,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ThemeData> createElement() {
    return _ThemeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ThemeProvider && other.brightness == brightness;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, brightness.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ThemeRef on AutoDisposeProviderRef<ThemeData> {
  /// The parameter `brightness` of this provider.
  Brightness get brightness;
}

class _ThemeProviderElement extends AutoDisposeProviderElement<ThemeData>
    with ThemeRef {
  _ThemeProviderElement(super.provider);

  @override
  Brightness get brightness => (origin as ThemeProvider).brightness;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
