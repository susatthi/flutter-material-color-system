import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'current_seed_color.dart';

final themeProvider =
    Provider.autoDispose.family<ThemeData, Brightness>((ref, brightness) {
  final seedColor = ref.watch(currentSeedColorProvider);
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: seedColor,
    brightness: brightness,
    snackBarTheme: const SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
    ),
  );
});
