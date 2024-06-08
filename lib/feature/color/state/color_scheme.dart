import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recase/recase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/ui/component/material.dart';
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
              foregroundColor: colorScheme.getOnColor(kind),
              text: kind.title,
              subText: colorScheme.getColor(kind).toHexString(),
            ),
          ),
        )
        .toList(),
  );
}

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
        ColorSchemeKind.outline => outline,
        ColorSchemeKind.outlineVariant => outlineVariant,
        ColorSchemeKind.shadow => shadow,
        ColorSchemeKind.scrim => scrim,
        ColorSchemeKind.inverseSurface => inverseSurface,
        ColorSchemeKind.onInverseSurface => onInverseSurface,
        ColorSchemeKind.inversePrimary => inversePrimary,
        ColorSchemeKind.surfaceTint => surfaceTint,
      };

  Color getOnColor(ColorSchemeKind kind) => switch (kind) {
        ColorSchemeKind.primary => onPrimary,
        ColorSchemeKind.onPrimary => primary,
        ColorSchemeKind.primaryContainer => onPrimaryContainer,
        ColorSchemeKind.onPrimaryContainer => primaryContainer,
        ColorSchemeKind.primaryFixed => onPrimaryFixed,
        ColorSchemeKind.primaryFixedDim => onPrimaryFixed,
        ColorSchemeKind.onPrimaryFixed => primaryFixed,
        ColorSchemeKind.onPrimaryFixedVariant => primaryFixed,
        ColorSchemeKind.secondary => onSecondary,
        ColorSchemeKind.onSecondary => secondary,
        ColorSchemeKind.secondaryContainer => onSecondaryContainer,
        ColorSchemeKind.onSecondaryContainer => secondaryContainer,
        ColorSchemeKind.secondaryFixed => onSecondaryFixed,
        ColorSchemeKind.secondaryFixedDim => onSecondaryFixed,
        ColorSchemeKind.onSecondaryFixed => secondaryFixed,
        ColorSchemeKind.onSecondaryFixedVariant => secondaryFixed,
        ColorSchemeKind.tertiary => onTertiary,
        ColorSchemeKind.onTertiary => tertiary,
        ColorSchemeKind.tertiaryContainer => onTertiaryContainer,
        ColorSchemeKind.onTertiaryContainer => tertiaryContainer,
        ColorSchemeKind.tertiaryFixed => onTertiaryFixed,
        ColorSchemeKind.tertiaryFixedDim => onTertiaryFixed,
        ColorSchemeKind.onTertiaryFixed => tertiaryFixed,
        ColorSchemeKind.onTertiaryFixedVariant => tertiaryFixed,
        ColorSchemeKind.error => onError,
        ColorSchemeKind.onError => error,
        ColorSchemeKind.errorContainer => onErrorContainer,
        ColorSchemeKind.onErrorContainer => errorContainer,
        ColorSchemeKind.surface => onSurface,
        ColorSchemeKind.onSurface => surface,
        ColorSchemeKind.surfaceDim => onSurface,
        ColorSchemeKind.surfaceBright => onSurface,
        ColorSchemeKind.surfaceContainerLowest => onSurface,
        ColorSchemeKind.surfaceContainerLow => onSurface,
        ColorSchemeKind.surfaceContainer => onSurface,
        ColorSchemeKind.surfaceContainerHigh => onSurface,
        ColorSchemeKind.surfaceContainerHighest => onSurface,
        ColorSchemeKind.onSurfaceVariant => surface,
        ColorSchemeKind.outline => surface,
        ColorSchemeKind.outlineVariant => onSurface,
        ColorSchemeKind.shadow => Colors.white,
        ColorSchemeKind.scrim => Colors.white,
        ColorSchemeKind.inverseSurface => onInverseSurface,
        ColorSchemeKind.onInverseSurface => inverseSurface,
        ColorSchemeKind.inversePrimary => onSurface,
        ColorSchemeKind.surfaceTint => surfaceTint,
      };
}
