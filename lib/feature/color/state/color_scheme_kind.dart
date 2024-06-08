import 'package:flutter/material.dart';
import 'package:recase/recase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../util/logger.dart';
import 'current_color_scheme.dart';
import 'tonal_palette.dart';

part 'color_scheme_kind.g.dart';

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
Color colorSchemeColor(
  ColorSchemeColorRef ref, {
  required ColorSchemeKind kind,
}) {
  final colorScheme = ref.watch(currentColorSchemeProvider);
  return switch (kind) {
    ColorSchemeKind.primary => colorScheme.primary,
    ColorSchemeKind.onPrimary => colorScheme.onPrimary,
    ColorSchemeKind.primaryContainer => colorScheme.primaryContainer,
    ColorSchemeKind.onPrimaryContainer => colorScheme.onPrimaryContainer,
    ColorSchemeKind.primaryFixed => colorScheme.primaryFixed,
    ColorSchemeKind.primaryFixedDim => colorScheme.primaryFixedDim,
    ColorSchemeKind.onPrimaryFixed => colorScheme.onPrimaryFixed,
    ColorSchemeKind.onPrimaryFixedVariant => colorScheme.onPrimaryFixedVariant,
    ColorSchemeKind.secondary => colorScheme.secondary,
    ColorSchemeKind.onSecondary => colorScheme.onSecondary,
    ColorSchemeKind.secondaryContainer => colorScheme.secondaryContainer,
    ColorSchemeKind.onSecondaryContainer => colorScheme.onSecondaryContainer,
    ColorSchemeKind.secondaryFixed => colorScheme.secondaryFixed,
    ColorSchemeKind.secondaryFixedDim => colorScheme.secondaryFixedDim,
    ColorSchemeKind.onSecondaryFixed => colorScheme.onSecondaryFixed,
    ColorSchemeKind.onSecondaryFixedVariant =>
      colorScheme.onSecondaryFixedVariant,
    ColorSchemeKind.tertiary => colorScheme.tertiary,
    ColorSchemeKind.onTertiary => colorScheme.onTertiary,
    ColorSchemeKind.tertiaryContainer => colorScheme.tertiaryContainer,
    ColorSchemeKind.onTertiaryContainer => colorScheme.onTertiaryContainer,
    ColorSchemeKind.tertiaryFixed => colorScheme.tertiaryFixed,
    ColorSchemeKind.tertiaryFixedDim => colorScheme.tertiaryFixedDim,
    ColorSchemeKind.onTertiaryFixed => colorScheme.onTertiaryFixed,
    ColorSchemeKind.onTertiaryFixedVariant =>
      colorScheme.onTertiaryFixedVariant,
    ColorSchemeKind.error => colorScheme.error,
    ColorSchemeKind.onError => colorScheme.onError,
    ColorSchemeKind.errorContainer => colorScheme.errorContainer,
    ColorSchemeKind.onErrorContainer => colorScheme.onErrorContainer,
    ColorSchemeKind.background => colorScheme.surface,
    ColorSchemeKind.onBackground => colorScheme.onSurface,
    ColorSchemeKind.surface => colorScheme.surface,
    ColorSchemeKind.onSurface => colorScheme.onSurface,
    ColorSchemeKind.surfaceDim => colorScheme.surfaceDim,
    ColorSchemeKind.surfaceBright => colorScheme.surfaceBright,
    ColorSchemeKind.surfaceContainerLowest =>
      colorScheme.surfaceContainerLowest,
    ColorSchemeKind.surfaceContainerLow => colorScheme.surfaceContainerLow,
    ColorSchemeKind.surfaceContainer => colorScheme.surfaceContainer,
    ColorSchemeKind.surfaceContainerHigh => colorScheme.surfaceContainerHigh,
    ColorSchemeKind.surfaceContainerHighest =>
      colorScheme.surfaceContainerHighest,
    ColorSchemeKind.onSurfaceVariant => colorScheme.onSurfaceVariant,
    ColorSchemeKind.surfaceVariant => colorScheme.surfaceContainerHighest,
    ColorSchemeKind.outline => colorScheme.outline,
    ColorSchemeKind.outlineVariant => colorScheme.outlineVariant,
    ColorSchemeKind.shadow => colorScheme.shadow,
    ColorSchemeKind.scrim => colorScheme.scrim,
    ColorSchemeKind.inverseSurface => colorScheme.inverseSurface,
    ColorSchemeKind.onInverseSurface => colorScheme.onInverseSurface,
    ColorSchemeKind.inversePrimary => colorScheme.inversePrimary,
    ColorSchemeKind.surfaceTint => colorScheme.surfaceTint,
  };
}

@riverpod
String colorSchemeColorName(
  ColorSchemeColorNameRef ref, {
  required ColorSchemeKind kind,
}) {
  final color = ref.watch(colorSchemeColorProvider(kind: kind));
  logger.d('kind: ${kind.name} $color');
  final title = ref.watch(tonalPaletteTitleProvider(color: color));
  return title ?? 'TBD';
}
