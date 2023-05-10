import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class MaterialColorX extends MaterialColor {
  MaterialColorX(int primary)
      : super(
          primary,
          _convertShades(primary),
        );

  /// 単色からマテリアルカラーを生成する
  ///
  /// 引数で与えられた単色はshade400に割り当てられる
  static Map<int, Color> _convertShades(int color) {
    final corePallete = CorePalette.contentOf(color);
    final tonalPalette = corePallete.primary;
    return {
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
    };
  }
}

extension MaterialColorHelper on MaterialColor {
  /// 標準のMaterialColorで一番明るいのはshade50だが、それよりももっと明るく
  /// ほぼ白色だがほんの少しだけ色がついている色
  Color get shade1 => this[1]!;
}

class ColorSchemeX extends ColorScheme {
  ColorSchemeX({
    required super.brightness,
    required MaterialColor primary,
    required MaterialColor secondary,
    MaterialColor? tertiary,
    required MaterialColor error,
    required MaterialColor neutral,
    MaterialColor? neutralVariant,
  }) : super(
          primary: brightness == Brightness.light
              ? primary.shade600
              : primary.shade200,
          onPrimary:
              brightness == Brightness.light ? Colors.white : primary.shade800,
          primaryContainer: brightness == Brightness.light
              ? primary.shade100
              : primary.shade700,
          onPrimaryContainer: brightness == Brightness.light
              ? primary.shade900
              : primary.shade100,
          secondary: brightness == Brightness.light
              ? secondary.shade600
              : secondary.shade200,
          onSecondary: brightness == Brightness.light
              ? Colors.white
              : secondary.shade800,
          secondaryContainer: brightness == Brightness.light
              ? secondary.shade100
              : secondary.shade700,
          onSecondaryContainer: brightness == Brightness.light
              ? secondary.shade900
              : secondary.shade100,
          tertiary: brightness == Brightness.light
              ? tertiary?.shade600
              : tertiary?.shade200,
          onTertiary: brightness == Brightness.light
              ? Colors.white
              : tertiary?.shade800,
          tertiaryContainer: brightness == Brightness.light
              ? tertiary?.shade100
              : tertiary?.shade700,
          onTertiaryContainer: brightness == Brightness.light
              ? tertiary?.shade900
              : tertiary?.shade100,
          error:
              brightness == Brightness.light ? error.shade600 : error.shade200,
          onError:
              brightness == Brightness.light ? Colors.white : error.shade800,
          errorContainer:
              brightness == Brightness.light ? error.shade100 : error.shade700,
          onErrorContainer:
              brightness == Brightness.light ? error.shade900 : error.shade100,
          background: brightness == Brightness.light
              ? neutral.shade1
              : neutral.shade900,
          onBackground: brightness == Brightness.light
              ? neutral.shade900
              : neutral.shade100,
          surface: brightness == Brightness.light
              ? neutral.shade1
              : neutral.shade900,
          onSurface: brightness == Brightness.light
              ? neutral.shade900
              : neutral.shade100,
          surfaceVariant: brightness == Brightness.light
              ? neutralVariant?.shade100
              : neutralVariant?.shade700,
          onSurfaceVariant: brightness == Brightness.light
              ? neutralVariant?.shade700
              : neutralVariant?.shade200,
          outline: brightness == Brightness.light
              ? neutralVariant?.shade500
              : neutralVariant?.shade400,
          outlineVariant: brightness == Brightness.light
              ? neutralVariant?.shade200
              : neutralVariant?.shade800,
          inverseSurface: brightness == Brightness.light
              ? neutral.shade800
              : neutral.shade1,
          onInverseSurface: brightness == Brightness.light
              ? neutral.shade50
              : neutral.shade900,
        );
}
