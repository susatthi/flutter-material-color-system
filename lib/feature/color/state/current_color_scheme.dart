import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../theme_mode/state/current_brightness.dart';
import 'current_dynamic_scheme_variant.dart';
import 'current_seed_color.dart';

part 'current_color_scheme.g.dart';

@riverpod
ColorScheme currentColorScheme(Ref ref) {
  final seedColor = ref.watch(currentSeedColorNotifierProvider);
  final brightness = ref.watch(currentBrightnessProvider);
  final variant = ref.watch(currentDynamicSchemeVariantNotifierProvider);
  return ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: brightness,
    dynamicSchemeVariant: variant,
  );
}
