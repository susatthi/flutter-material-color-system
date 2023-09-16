import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

import '../../../../../util/core.dart';

extension BuildContextX on BuildContext {
  /// ダークモードかどうかを返す
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  /// カラーを返す
  ColorScheme get _colorScheme => Theme.of(this).colorScheme;
  Color get primary => _colorScheme.primary;
  Color get onPrimary => _colorScheme.onPrimary;
  Color get primaryContainer => _colorScheme.primaryContainer;
  Color get onPrimaryContainer => _colorScheme.onPrimaryContainer;
  Color get secondary => _colorScheme.secondary;
  Color get onSecondary => _colorScheme.onSecondary;
  Color get secondaryContainer => _colorScheme.secondaryContainer;
  Color get onSecondaryContainer => _colorScheme.onSecondaryContainer;
  Color get tertiary => _colorScheme.tertiary;
  Color get onTertiary => _colorScheme.onTertiary;
  Color get tertiaryContainer => _colorScheme.tertiaryContainer;
  Color get onTertiaryContainer => _colorScheme.onTertiaryContainer;
  Color get error => _colorScheme.error;
  Color get onError => _colorScheme.onError;
  Color get errorContainer => _colorScheme.errorContainer;
  Color get onErrorContainer => _colorScheme.onErrorContainer;
  Color get background => _colorScheme.background;
  Color get onBackground => _colorScheme.onBackground;
  Color get surface => _colorScheme.surface;
  Color get onSurface => _colorScheme.onSurface;
  Color get outline => _colorScheme.outline;
  Color get outlineVariant => _colorScheme.outlineVariant;
  Color get surfaceVariant => _colorScheme.surfaceVariant;
  Color get onSurfaceVariant => _colorScheme.onSurfaceVariant;
  Color get surfaceTint => _colorScheme.surfaceTint;
  Color get inversePrimary => _colorScheme.inversePrimary;
  Color get inverseSurface => _colorScheme.inverseSurface;
  Color get onInverseSurface => _colorScheme.onInverseSurface;

  /// テキストテーマを返す
  TextTheme get _textTheme => Theme.of(this).textTheme;
  TextStyle? get displayLarge => _textTheme.displayLarge;
  TextStyle? get displayMedium => _textTheme.displayMedium;
  TextStyle? get displaySmall => _textTheme.displaySmall;
  TextStyle? get headlineLarge => _textTheme.headlineLarge;
  TextStyle? get headlineMedium => _textTheme.headlineMedium;
  TextStyle? get headlineSmall => _textTheme.headlineSmall;
  TextStyle? get titleLarge => _textTheme.titleLarge;
  TextStyle? get titleMedium => _textTheme.titleMedium;
  TextStyle? get titleSmall => _textTheme.titleSmall;
  TextStyle? get labelLarge => _textTheme.labelLarge;
  TextStyle? get labelMedium => _textTheme.labelMedium;
  TextStyle? get labelSmall => _textTheme.labelSmall;
  TextStyle? get bodyLarge => _textTheme.bodyLarge;
  TextStyle? get bodyMedium => _textTheme.bodyMedium;
  TextStyle? get bodySmall => _textTheme.bodySmall;
  TextStyle? get caption => labelSmall?.copyWith(color: outline);
}

extension CorePaletteX on CorePalette {
  MaterialColor get primaryMaterial => primary.toMaterialColor();
  MaterialColor get secondaryMaterial => secondary.toMaterialColor();
  MaterialColor get tertiaryMaterial => tertiary.toMaterialColor();
  MaterialColor get errorMaterial => error.toMaterialColor();
  MaterialColor get neutralMaterial => neutral.toMaterialColor();
  MaterialColor get neutralVariantMaterial => neutralVariant.toMaterialColor();
}

extension TonalPaletteX on TonalPalette {
  /// MaterialColorに変換する
  MaterialColor toMaterialColor() {
    final primary = get(40);
    return MaterialColor(primary, {
      1: Color(get(99)),
      50: Color(get(95)),
      100: Color(get(90)),
      200: Color(get(80)),
      300: Color(get(70)),
      400: Color(get(60)),
      500: Color(get(50)),
      600: Color(primary),
      700: Color(get(30)),
      800: Color(get(20)),
      900: Color(get(10)),
    });
  }
}

extension MaterialColorX on MaterialColor {
  /// 標準のMaterialColorで一番明るいのはshade50だが、それよりももっと明るく
  /// ほぼ白色だがほんの少しだけ色がついている色
  Color? get shade1 => this[1];
}

extension ColorX on Color {
  /// HEX型の文字列に変換する
  String toHexString() {
    return '${red.toHexString()}'
        '${green.toHexString()}'
        '${blue.toHexString()}';
  }
}

class MaterialSurfaceColor {
  const MaterialSurfaceColor._({
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
    required this.surfaceDim,
    required this.surfaceBright,
  });

  factory MaterialSurfaceColor.fromSeed({
    required Color seedColor,
    Brightness brightness = Brightness.light,
  }) {
    final neutralPalette = CorePalette.of(seedColor.value).neutral;
    switch (brightness) {
      case Brightness.light:
        return MaterialSurfaceColor._(
          surfaceContainerLowest: Color(neutralPalette.get(100)),
          surfaceContainerLow: Color(neutralPalette.get(96)),
          surfaceContainer: Color(neutralPalette.get(94)),
          surfaceContainerHigh: Color(neutralPalette.get(92)),
          surfaceContainerHighest: Color(neutralPalette.get(90)),
          surfaceDim: Color(neutralPalette.get(87)),
          surfaceBright: Color(neutralPalette.get(98)),
        );
      case Brightness.dark:
        return MaterialSurfaceColor._(
          surfaceContainerLowest: Color(neutralPalette.get(4)),
          surfaceContainerLow: Color(neutralPalette.get(10)),
          surfaceContainer: Color(neutralPalette.get(12)),
          surfaceContainerHigh: Color(neutralPalette.get(17)),
          surfaceContainerHighest: Color(neutralPalette.get(22)),
          surfaceDim: Color(neutralPalette.get(6)),
          surfaceBright: Color(neutralPalette.get(24)),
        );
    }
  }

  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
  final Color surfaceDim;
  final Color surfaceBright;
}
