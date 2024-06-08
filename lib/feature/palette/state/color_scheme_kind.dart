import 'package:flutter/material.dart';
import 'package:recase/recase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/state/current_brightness.dart';
import '../../../core/state/current_color_scheme.dart';

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

  String get lightColorName => switch (this) {
        primary => 'Primary600',
        onPrimary => 'White',
        primaryContainer => 'Primary100',
        onPrimaryContainer => 'Primary900',
        primaryFixed => 'TBD',
        primaryFixedDim => 'TBD',
        onPrimaryFixed => 'TBD',
        onPrimaryFixedVariant => 'TBD',
        secondary => 'Secondary600',
        onSecondary => 'White',
        secondaryContainer => 'Secondary100',
        onSecondaryContainer => 'Secondary900',
        secondaryFixed => 'TBD',
        secondaryFixedDim => 'TBD',
        onSecondaryFixed => 'TBD',
        onSecondaryFixedVariant => 'TBD',
        tertiary => 'Tertiary600',
        onTertiary => 'White',
        tertiaryContainer => 'Tertiary100',
        onTertiaryContainer => 'Tertiary900',
        tertiaryFixed => 'TBD',
        tertiaryFixedDim => 'TBD',
        onTertiaryFixed => 'TBD',
        onTertiaryFixedVariant => 'TBD',
        error => 'Error600',
        onError => 'White',
        errorContainer => 'Error100',
        onErrorContainer => 'Error900',
        background => 'Neutral1',
        onBackground => 'Neutral900',
        surface => 'Neutral1',
        onSurface => 'Neutral900',
        surfaceDim => 'Neutral130',
        surfaceBright => 'Neutral20',
        surfaceContainerLowest => 'White',
        surfaceContainerLow => 'Neutral40',
        surfaceContainer => 'Neutral60',
        surfaceContainerHigh => 'Neutral80',
        surfaceContainerHighest => 'Neutral100',
        onSurfaceVariant => 'Neutral-Variant700',
        surfaceVariant => 'Neutral-Variant100',
        outline => 'Neutral-Variant500',
        outlineVariant => 'Neutral-Variant200',
        shadow => 'TBD',
        scrim => 'TBD',
        inverseSurface => 'Neutral800',
        onInverseSurface => 'Neutral50',
        inversePrimary => 'Primary200',
        surfaceTint => 'Primary600',
      };

  String get darkColorName => switch (this) {
        primary => 'Primary200',
        onPrimary => 'Primary800',
        primaryContainer => 'Primary700',
        onPrimaryContainer => 'Primary100',
        primaryFixed => 'TBD',
        primaryFixedDim => 'TBD',
        onPrimaryFixed => 'TBD',
        onPrimaryFixedVariant => 'TBD',
        secondary => 'Secondary200',
        onSecondary => 'Secondary800',
        secondaryContainer => 'Secondary700',
        onSecondaryContainer => 'Secondary100',
        secondaryFixed => 'TBD',
        secondaryFixedDim => 'TBD',
        onSecondaryFixed => 'TBD',
        onSecondaryFixedVariant => 'TBD',
        tertiary => 'Tertiary200',
        onTertiary => 'Tertiary800',
        tertiaryContainer => 'Tertiary700',
        onTertiaryContainer => 'Tertiary100',
        tertiaryFixed => 'TBD',
        tertiaryFixedDim => 'TBD',
        onTertiaryFixed => 'TBD',
        onTertiaryFixedVariant => 'TBD',
        error => 'Error200',
        onError => 'Error800',
        errorContainer => 'Error700',
        onErrorContainer => 'Error100',
        background => 'Neutral900',
        onBackground => 'Neutral100',
        surface => 'Neutral900',
        onSurface => 'Neutral100',
        surfaceDim => 'Neutral940',
        surfaceBright => 'Neutral760',
        surfaceContainerLowest => 'Neutral960',
        surfaceContainerLow => 'Neutral900',
        surfaceContainer => 'Neutral880',
        surfaceContainerHigh => 'Neutral830',
        surfaceContainerHighest => 'Neutral780',
        onSurfaceVariant => 'Neutral-Variant200',
        surfaceVariant => 'Neutral-Variant700',
        outline => 'Neutral-Variant400',
        outlineVariant => 'Neutral-Variant800',
        shadow => 'TBD',
        scrim => 'TBD',
        inverseSurface => 'Neutral100',
        onInverseSurface => 'Neutral800',
        inversePrimary => 'Primary600',
        surfaceTint => 'Primary200',
      };
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
  final brightness = ref.watch(currentBrightnessProvider);
  return switch (brightness) {
    Brightness.light => kind.lightColorName,
    Brightness.dark => kind.darkColorName,
  };
}
