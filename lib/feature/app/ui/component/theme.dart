import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../color/state/current_dynamic_scheme_variant.dart';
import '../../../color/state/current_seed_color.dart';

part 'theme.g.dart';

@riverpod
ThemeData theme(ThemeRef ref, Brightness brightness) {
  final seedColor = ref.watch(currentSeedColorNotifierProvider);
  final schemeVariant = ref.watch(currentDynamicSchemeVariantNotifierProvider);
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
      dynamicSchemeVariant: schemeVariant,
    ),
    snackBarTheme: const SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
    ),
  );
}
