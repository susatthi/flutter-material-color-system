import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app_data/state/current_seed_color.dart';

part 'theme.g.dart';

@riverpod
ThemeData theme(ThemeRef ref, Brightness brightness) {
  final seedColor = ref.watch(currentSeedColorProvider);
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: seedColor,
    brightness: brightness,
    snackBarTheme: const SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
    ),
  );
}
