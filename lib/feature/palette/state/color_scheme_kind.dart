import 'package:flutter/material.dart';
import 'package:recase/recase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/state/current_brightness.dart';
import '../../../core/state/current_color_scheme.dart';
import '../../../core/state/current_material_surface_color.dart';

part 'color_scheme_kind.g.dart';

enum ColorSchemeKind {
  primary,
  onPrimary,
  primaryContainer,
  onPrimaryContainer,
  secondary,
  onSecondary,
  secondaryContainer,
  onSecondaryContainer,
  tertiary,
  onTertiary,
  tertiaryContainer,
  onTertiaryContainer,
  error,
  onError,
  errorContainer,
  onErrorContainer,
  background,
  onBackground,
  surface,
  onSurface,
  outline,
  outlineVariant,
  surfaceVariant,
  onSurfaceVariant,
  surfaceTint,
  inversePrimary,
  inverseSurface,
  onInverseSurface,
  surfaceContainerLowest,
  surfaceContainerLow,
  surfaceContainer,
  surfaceContainerHigh,
  surfaceContainerHighest,
  surfaceBright,
  surfaceDim,
  ;

  String get title => ReCase(name).titleCase;

  String get lightColorName => switch (this) {
        primary => 'Primary600',
        onPrimary => 'White',
        primaryContainer => 'Primary100',
        onPrimaryContainer => 'Primary900',
        secondary => 'Secondary600',
        onSecondary => 'White',
        secondaryContainer => 'Secondary100',
        onSecondaryContainer => 'Secondary900',
        tertiary => 'Tertiary600',
        onTertiary => 'White',
        tertiaryContainer => 'Tertiary100',
        onTertiaryContainer => 'Tertiary900',
        error => 'Error600',
        onError => 'White',
        errorContainer => 'Error100',
        onErrorContainer => 'Error900',
        background => 'Neutral1',
        onBackground => 'Neutral900',
        surface => 'Neutral1',
        onSurface => 'Neutral900',
        outline => 'Neutral-Variant500',
        outlineVariant => 'Neutral-Variant200',
        surfaceVariant => 'Neutral-Variant100',
        onSurfaceVariant => 'Neutral-Variant700',
        surfaceTint => 'Primary600',
        inversePrimary => 'Primary200',
        inverseSurface => 'Neutral800',
        onInverseSurface => 'Neutral50',
        surfaceContainerLowest => 'White',
        surfaceContainerLow => 'Neutral40',
        surfaceContainer => 'Neutral60',
        surfaceContainerHigh => 'Neutral80',
        surfaceContainerHighest => 'Neutral100',
        surfaceBright => 'Neutral20',
        surfaceDim => 'Neutral130',
      };

  String get darkColorName => switch (this) {
        primary => 'Primary200',
        onPrimary => 'Primary800',
        primaryContainer => 'Primary700',
        onPrimaryContainer => 'Primary100',
        secondary => 'Secondary200',
        onSecondary => 'Secondary800',
        secondaryContainer => 'Secondary700',
        onSecondaryContainer => 'Secondary100',
        tertiary => 'Tertiary200',
        onTertiary => 'Tertiary800',
        tertiaryContainer => 'Tertiary700',
        onTertiaryContainer => 'Tertiary100',
        error => 'Error200',
        onError => 'Error800',
        errorContainer => 'Error700',
        onErrorContainer => 'Error100',
        background => 'Neutral900',
        onBackground => 'Neutral100',
        surface => 'Neutral900',
        onSurface => 'Neutral100',
        outline => 'Neutral-Variant400',
        outlineVariant => 'Neutral-Variant800',
        surfaceVariant => 'Neutral-Variant700',
        onSurfaceVariant => 'Neutral-Variant200',
        surfaceTint => 'Primary200',
        inversePrimary => 'Primary600',
        inverseSurface => 'Neutral100',
        onInverseSurface => 'Neutral800',
        surfaceContainerLowest => 'Neutral960',
        surfaceContainerLow => 'Neutral900',
        surfaceContainer => 'Neutral880',
        surfaceContainerHigh => 'Neutral830',
        surfaceContainerHighest => 'Neutral780',
        surfaceBright => 'Neutral760',
        surfaceDim => 'Neutral940',
      };
}

@riverpod
Color colorSchemeColor(
  ColorSchemeColorRef ref, {
  required ColorSchemeKind kind,
}) {
  final colorScheme = ref.watch(currentColorSchemeProvider);
  final materialSurfaceColor = ref.watch(currentMaterialSurfaceColorProvider);
  return switch (kind) {
    ColorSchemeKind.primary => colorScheme.primary,
    ColorSchemeKind.onPrimary => colorScheme.onPrimary,
    ColorSchemeKind.primaryContainer => colorScheme.primaryContainer,
    ColorSchemeKind.onPrimaryContainer => colorScheme.onPrimaryContainer,
    ColorSchemeKind.secondary => colorScheme.secondary,
    ColorSchemeKind.onSecondary => colorScheme.onSecondary,
    ColorSchemeKind.secondaryContainer => colorScheme.secondaryContainer,
    ColorSchemeKind.onSecondaryContainer => colorScheme.onSecondaryContainer,
    ColorSchemeKind.tertiary => colorScheme.tertiary,
    ColorSchemeKind.onTertiary => colorScheme.onTertiary,
    ColorSchemeKind.tertiaryContainer => colorScheme.tertiaryContainer,
    ColorSchemeKind.onTertiaryContainer => colorScheme.onTertiaryContainer,
    ColorSchemeKind.error => colorScheme.error,
    ColorSchemeKind.onError => colorScheme.onError,
    ColorSchemeKind.errorContainer => colorScheme.errorContainer,
    ColorSchemeKind.onErrorContainer => colorScheme.onErrorContainer,
    ColorSchemeKind.background => colorScheme.background,
    ColorSchemeKind.onBackground => colorScheme.onBackground,
    ColorSchemeKind.surface => colorScheme.surface,
    ColorSchemeKind.onSurface => colorScheme.onSurface,
    ColorSchemeKind.outline => colorScheme.outline,
    ColorSchemeKind.outlineVariant => colorScheme.outlineVariant,
    ColorSchemeKind.surfaceVariant => colorScheme.surfaceVariant,
    ColorSchemeKind.onSurfaceVariant => colorScheme.onSurfaceVariant,
    ColorSchemeKind.surfaceTint => colorScheme.surfaceTint,
    ColorSchemeKind.inversePrimary => colorScheme.inversePrimary,
    ColorSchemeKind.inverseSurface => colorScheme.inverseSurface,
    ColorSchemeKind.onInverseSurface => colorScheme.onInverseSurface,
    ColorSchemeKind.surfaceContainerLowest =>
      materialSurfaceColor.surfaceContainerLowest,
    ColorSchemeKind.surfaceContainerLow =>
      materialSurfaceColor.surfaceContainerLow,
    ColorSchemeKind.surfaceContainer => materialSurfaceColor.surfaceContainer,
    ColorSchemeKind.surfaceContainerHigh =>
      materialSurfaceColor.surfaceContainerHigh,
    ColorSchemeKind.surfaceContainerHighest =>
      materialSurfaceColor.surfaceContainerHighest,
    ColorSchemeKind.surfaceBright => materialSurfaceColor.surfaceBright,
    ColorSchemeKind.surfaceDim => materialSurfaceColor.surfaceDim,
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
