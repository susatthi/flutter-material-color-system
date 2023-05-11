import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seedColorProvider = StateProvider((ref) {
  return const Color(0xFF6750A4);
});

final themeProvider = Provider((ref) {
  final seedColor = ref.watch(seedColorProvider);
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: seedColor,
    brightness: Brightness.light,
  );
});
