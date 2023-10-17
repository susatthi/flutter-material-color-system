import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../ui/component/material.dart';
import 'current_brightness.dart';
import 'current_seed_color.dart';

part 'current_material_surface_color.g.dart';

@riverpod
MaterialSurfaceColor currentMaterialSurfaceColor(
  CurrentMaterialSurfaceColorRef ref,
) {
  final seedColor = ref.watch(currentSeedColorProvider);
  final brightness = ref.watch(currentBrightnessProvider);
  return MaterialSurfaceColor.fromSeed(
    seedColor: seedColor,
    brightness: brightness,
  );
}
