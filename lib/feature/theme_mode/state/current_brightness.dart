import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'current_theme_mode.dart';

part 'current_brightness.g.dart';

@riverpod
Brightness currentBrightness(Ref ref) {
  final themeMode = ref.watch(currentThemeModeProvider);
  return themeMode == ThemeMode.light ? Brightness.light : Brightness.dark;
}
