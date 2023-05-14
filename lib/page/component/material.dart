import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

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
