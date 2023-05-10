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

  static MaterialColor get neutral => fromSeed(0xFF90918B);
  static MaterialColor get neutralVariant => fromSeed(0xFF8D9387);
}
