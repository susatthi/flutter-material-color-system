import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../theme_mode/state/current_brightness.dart';
import 'current_seed_color.dart';

part 'current_color_scheme.g.dart';

@riverpod
ColorScheme currentColorScheme(CurrentColorSchemeRef ref) {
  final seedColor = ref.watch(currentSeedColorProvider);
  final brightness = ref.watch(currentBrightnessProvider);
  return ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: brightness,
    dynamicSchemeVariant: DynamicSchemeVariant.rainbow,
  );
}
