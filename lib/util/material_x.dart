import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

extension MaterialColorX on MaterialColor {
  /// 単色からマテリアルカラーを生成する
  ///
  /// 引数で与えられた単色はshade400に割り当てられる
  static MaterialColor fromSeed(int color) {
    final corePallete = CorePalette.contentOf(color);
    final tonalPalette = corePallete.primary;
    return MaterialColor(color, {
      1: Color(tonalPalette.get(99)),
      50: Color(tonalPalette.get(95)),
      100: Color(tonalPalette.get(90)),
      200: Color(tonalPalette.get(80)),
      300: Color(tonalPalette.get(70)),
      400: Color(tonalPalette.get(60)),
      500: Color(tonalPalette.get(50)),
      600: Color(tonalPalette.get(40)),
      700: Color(tonalPalette.get(30)),
      800: Color(tonalPalette.get(20)),
      900: Color(tonalPalette.get(10)),
    });
  }

  /// 標準のMaterialColorで一番明るいのはshade50だが、それよりももっと明るく
  /// ほぼ白色だがほんの少しだけ色がついている色
  Color get shade1 => this[1]!;

  static MaterialColor get primary => fromSeed(0xFF6750A4);
  static MaterialColor get secondary => fromSeed(0xFF958DA5);
  static MaterialColor get tertiary => fromSeed(0xFFB58392);
  static MaterialColor get error => fromSeed(0xFFBA1A1A);
  static MaterialColor get neutral => fromSeed(0xFF939094);
  static MaterialColor get neutralVariant => fromSeed(0xFF625D66);
}

extension ColorSchemeX on ColorScheme {
  static ColorScheme fromMaterialColors({
    required Brightness brightness,
    required MaterialColor primary,
    required MaterialColor secondary,
    MaterialColor? tertiary,
    required MaterialColor error,
    required MaterialColor neutral,
    MaterialColor? neutralVariant,
  }) {
    switch (brightness) {
      case Brightness.light:
        return _fromLightMaterialColors(
          primary: primary,
          secondary: secondary,
          tertiary: tertiary,
          error: error,
          neutral: neutral,
          neutralVariant: neutralVariant,
        );
      case Brightness.dark:
        return _fromDarkMaterialColors(
          primary: primary,
          secondary: secondary,
          tertiary: tertiary,
          error: error,
          neutral: neutral,
          neutralVariant: neutralVariant,
        );
    }
  }

  static ColorScheme _fromLightMaterialColors({
    required MaterialColor primary,
    required MaterialColor secondary,
    MaterialColor? tertiary,
    required MaterialColor error,
    required MaterialColor neutral,
    MaterialColor? neutralVariant,
  }) =>
      ColorScheme(
        brightness: Brightness.light,
        primary: primary.shade600,
        onPrimary: Colors.white,
        primaryContainer: primary.shade100,
        onPrimaryContainer: primary.shade900,
        secondary: secondary.shade600,
        onSecondary: Colors.white,
        secondaryContainer: secondary.shade100,
        onSecondaryContainer: secondary.shade900,
        tertiary: tertiary?.shade600,
        onTertiary: Colors.white,
        tertiaryContainer: tertiary?.shade100,
        onTertiaryContainer: tertiary?.shade900,
        error: error.shade600,
        onError: Colors.white,
        errorContainer: error.shade100,
        onErrorContainer: error.shade900,
        background: neutral.shade1,
        onBackground: neutral.shade900,
        surface: neutral.shade1,
        onSurface: neutral.shade900,
        surfaceVariant: neutralVariant?.shade100,
        onSurfaceVariant: neutralVariant?.shade700,
        outline: neutralVariant?.shade500,
        outlineVariant: neutralVariant?.shade200,
        inverseSurface: neutral.shade800,
        onInverseSurface: neutral.shade50,
      );

  static ColorScheme _fromDarkMaterialColors({
    required MaterialColor primary,
    required MaterialColor secondary,
    MaterialColor? tertiary,
    required MaterialColor error,
    required MaterialColor neutral,
    MaterialColor? neutralVariant,
  }) =>
      ColorScheme(
        brightness: Brightness.dark,
        primary: primary.shade200,
        onPrimary: primary.shade800,
        primaryContainer: primary.shade700,
        onPrimaryContainer: primary.shade100,
        secondary: secondary.shade200,
        onSecondary: secondary.shade800,
        secondaryContainer: secondary.shade700,
        onSecondaryContainer: secondary.shade100,
        tertiary: tertiary?.shade200,
        onTertiary: tertiary?.shade800,
        tertiaryContainer: tertiary?.shade700,
        onTertiaryContainer: tertiary?.shade100,
        error: error.shade200,
        onError: error.shade800,
        errorContainer: error.shade700,
        onErrorContainer: error.shade100,
        background: neutral.shade900,
        onBackground: neutral.shade100,
        surface: neutral.shade900,
        onSurface: neutral.shade100,
        surfaceVariant: neutralVariant?.shade700,
        onSurfaceVariant: neutralVariant?.shade200,
        outline: neutralVariant?.shade400,
        outlineVariant: neutralVariant?.shade800,
        inverseSurface: neutral.shade1,
        onInverseSurface: neutral.shade900,
      );
}
