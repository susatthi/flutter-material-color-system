import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

extension MaterialColorHelper on MaterialColor {
  /// 標準のMaterialColorで一番明るいのはshade50だが、それよりももっと明るく
  /// ほぼ白色だがほんの少しだけ色がついている色
  Color? get shade1 => this[1];
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

extension CorePaletteX on CorePalette {
  MaterialColor get materialPrimary => primary.toMaterialColor();
  MaterialColor get materialSecondary => secondary.toMaterialColor();
  MaterialColor get materialTertiary => tertiary.toMaterialColor();
  MaterialColor get materialError => error.toMaterialColor();
  MaterialColor get materialNeutral => neutral.toMaterialColor();
  MaterialColor get materialNeutralVariant => neutralVariant.toMaterialColor();
}
