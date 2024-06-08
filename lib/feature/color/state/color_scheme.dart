import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recase/recase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'current_color_scheme.dart';
import 'palette_item.dart';

part 'color_scheme.freezed.dart';
part 'color_scheme.g.dart';

@freezed
class ColorSchemeCollection with _$ColorSchemeCollection {
  const factory ColorSchemeCollection({
    required List<ColorSchemeItem> items,
  }) = _ColorSchemeCollection;
  const ColorSchemeCollection._();

  PaletteItem getPaletteItem(ColorSchemeKind kind) =>
      items.firstWhere((item) => item.kind == kind).item;
}

@freezed
class ColorSchemeItem with _$ColorSchemeItem {
  const factory ColorSchemeItem({
    required ColorSchemeKind kind,
    required PaletteItem item,
  }) = _ColorSchemeItem;
}

enum ColorSchemeKind {
  primary,
  onPrimary,
  primaryContainer,
  onPrimaryContainer,

  primaryFixed,
  primaryFixedDim,
  onPrimaryFixed,
  onPrimaryFixedVariant,

  secondary,
  onSecondary,
  secondaryContainer,
  onSecondaryContainer,

  secondaryFixed,
  secondaryFixedDim,
  onSecondaryFixed,
  onSecondaryFixedVariant,

  tertiary,
  onTertiary,
  tertiaryContainer,
  onTertiaryContainer,

  tertiaryFixed,
  tertiaryFixedDim,
  onTertiaryFixed,
  onTertiaryFixedVariant,

  error,
  onError,
  errorContainer,
  onErrorContainer,

  background,
  onBackground,
  surface,
  onSurface,
  surfaceDim,
  surfaceBright,
  surfaceContainerLowest,
  surfaceContainerLow,
  surfaceContainer,
  surfaceContainerHigh,
  surfaceContainerHighest,
  onSurfaceVariant,
  surfaceVariant,

  outline,
  outlineVariant,
  shadow,
  scrim,
  inverseSurface,
  onInverseSurface,
  inversePrimary,
  surfaceTint,
  ;

  String get title => ReCase(name).titleCase;
}

@riverpod
ColorSchemeCollection colorSchemeCollection(
  ColorSchemeCollectionRef ref,
) {
  final colorScheme = ref.watch(currentColorSchemeProvider);
  return ColorSchemeCollection(
    items: ColorSchemeKind.values
        .map(
          (kind) => ColorSchemeItem(
            kind: kind,
            item: PaletteItem(
              backgroundColor: colorScheme.getColor(kind),
              text: kind.title,
              subText: 'TBD',
            ),
          ),
        )
        .toList(),
  );
}

// @riverpod
// String colorSchemeColorName(
//   ColorSchemeColorNameRef ref, {
//   required ColorSchemeKind kind,
// }) {
//   final color = ref.watch(colorSchemeColorProvider(kind: kind));
//   logger.d('kind: ${kind.name} $color');
//   final title = ref.watch(tonalPaletteTitleProvider(color: color));
//   return title ?? 'TBD';
// }

extension on ColorScheme {
  Color getColor(ColorSchemeKind kind) => switch (kind) {
        ColorSchemeKind.primary => primary,
        ColorSchemeKind.onPrimary => onPrimary,
        ColorSchemeKind.primaryContainer => primaryContainer,
        ColorSchemeKind.onPrimaryContainer => onPrimaryContainer,
        ColorSchemeKind.primaryFixed => primaryFixed,
        ColorSchemeKind.primaryFixedDim => primaryFixedDim,
        ColorSchemeKind.onPrimaryFixed => onPrimaryFixed,
        ColorSchemeKind.onPrimaryFixedVariant => onPrimaryFixedVariant,
        ColorSchemeKind.secondary => secondary,
        ColorSchemeKind.onSecondary => onSecondary,
        ColorSchemeKind.secondaryContainer => secondaryContainer,
        ColorSchemeKind.onSecondaryContainer => onSecondaryContainer,
        ColorSchemeKind.secondaryFixed => secondaryFixed,
        ColorSchemeKind.secondaryFixedDim => secondaryFixedDim,
        ColorSchemeKind.onSecondaryFixed => onSecondaryFixed,
        ColorSchemeKind.onSecondaryFixedVariant => onSecondaryFixedVariant,
        ColorSchemeKind.tertiary => tertiary,
        ColorSchemeKind.onTertiary => onTertiary,
        ColorSchemeKind.tertiaryContainer => tertiaryContainer,
        ColorSchemeKind.onTertiaryContainer => onTertiaryContainer,
        ColorSchemeKind.tertiaryFixed => tertiaryFixed,
        ColorSchemeKind.tertiaryFixedDim => tertiaryFixedDim,
        ColorSchemeKind.onTertiaryFixed => onTertiaryFixed,
        ColorSchemeKind.onTertiaryFixedVariant => onTertiaryFixedVariant,
        ColorSchemeKind.error => error,
        ColorSchemeKind.onError => onError,
        ColorSchemeKind.errorContainer => errorContainer,
        ColorSchemeKind.onErrorContainer => onErrorContainer,
        ColorSchemeKind.background => surface,
        ColorSchemeKind.onBackground => onSurface,
        ColorSchemeKind.surface => surface,
        ColorSchemeKind.onSurface => onSurface,
        ColorSchemeKind.surfaceDim => surfaceDim,
        ColorSchemeKind.surfaceBright => surfaceBright,
        ColorSchemeKind.surfaceContainerLowest => surfaceContainerLowest,
        ColorSchemeKind.surfaceContainerLow => surfaceContainerLow,
        ColorSchemeKind.surfaceContainer => surfaceContainer,
        ColorSchemeKind.surfaceContainerHigh => surfaceContainerHigh,
        ColorSchemeKind.surfaceContainerHighest => surfaceContainerHighest,
        ColorSchemeKind.onSurfaceVariant => onSurfaceVariant,
        ColorSchemeKind.surfaceVariant => surfaceContainerHighest,
        ColorSchemeKind.outline => outline,
        ColorSchemeKind.outlineVariant => outlineVariant,
        ColorSchemeKind.shadow => shadow,
        ColorSchemeKind.scrim => scrim,
        ColorSchemeKind.inverseSurface => inverseSurface,
        ColorSchemeKind.onInverseSurface => onInverseSurface,
        ColorSchemeKind.inversePrimary => inversePrimary,
        ColorSchemeKind.surfaceTint => surfaceTint,
      };
}
