import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_theme_mode.g.dart';

@riverpod
class CurrentThemeMode extends _$CurrentThemeMode {
  @override
  ThemeMode build() => ThemeMode.light;

  void toggle() {
    switch (state) {
      case ThemeMode.light:
      case ThemeMode.system:
        state = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        state = ThemeMode.light;
        break;
    }
  }
}
