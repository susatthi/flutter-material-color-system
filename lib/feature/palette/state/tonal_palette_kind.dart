import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:recase/recase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/state/current_seed_color.dart';
import '../../../core/ui/component/material.dart';

part 'tonal_palette_kind.g.dart';

enum TonalPaletteKind {
  primary,
  secondary,
  tertiary,
  error,
  neutral,
  neutralVariant,
  ;

  String get title => ReCase(name).titleCase;
}

enum TonalPaletteShade {
  shade1,
  shade50,
  shade100,
  shade200,
  shade300,
  shade400,
  shade500,
  shade600,
  shade700,
  shade800,
  shade900,
  ;

  String get title => name.replaceAll('shade', '');
}

@riverpod
MaterialColor tonalPaletteMaterialColor(
  TonalPaletteMaterialColorRef ref, {
  required TonalPaletteKind kind,
}) {
  final seedColor = ref.watch(currentSeedColorProvider);
  final palette = CorePalette.of(seedColor.value);
  return switch (kind) {
    TonalPaletteKind.primary => palette.primaryMaterial,
    TonalPaletteKind.secondary => palette.secondaryMaterial,
    TonalPaletteKind.tertiary => palette.tertiaryMaterial,
    TonalPaletteKind.error => palette.errorMaterial,
    TonalPaletteKind.neutral => palette.neutralMaterial,
    TonalPaletteKind.neutralVariant => palette.neutralVariantMaterial,
  };
}

@riverpod
Color tonalPaletteColor(
  TonalPaletteColorRef ref, {
  required TonalPaletteKind kind,
  required TonalPaletteShade shade,
}) {
  final materialColor =
      ref.watch(tonalPaletteMaterialColorProvider(kind: kind));
  return switch (shade) {
    TonalPaletteShade.shade1 => materialColor.shade1!,
    TonalPaletteShade.shade50 => materialColor.shade50,
    TonalPaletteShade.shade100 => materialColor.shade100,
    TonalPaletteShade.shade200 => materialColor.shade200,
    TonalPaletteShade.shade300 => materialColor.shade300,
    TonalPaletteShade.shade400 => materialColor.shade400,
    TonalPaletteShade.shade500 => materialColor.shade500,
    TonalPaletteShade.shade600 => materialColor.shade600,
    TonalPaletteShade.shade700 => materialColor.shade700,
    TonalPaletteShade.shade800 => materialColor.shade800,
    TonalPaletteShade.shade900 => materialColor.shade900,
  };
}
