import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/shared_preferences/shared_preferences.dart';

part 'current_theme_mode.g.dart';

@riverpod
class CurrentThemeMode extends _$CurrentThemeMode {
  static const _key = 'themeMode';

  @override
  ThemeMode build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    return prefs.getString(_key)?.toThemeMode() ?? ThemeMode.light;
  }

  Future<void> toggle() async {
    final newValue = state.toggle();
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setString(_key, newValue.name);
    state = newValue;
  }
}

extension on String {
  ThemeMode toThemeMode() => ThemeMode.values.firstWhere((e) => e.name == this);
}

extension on ThemeMode {
  ThemeMode toggle() {
    switch (this) {
      case ThemeMode.light:
      case ThemeMode.system:
        return ThemeMode.dark;
      case ThemeMode.dark:
        return ThemeMode.light;
    }
  }
}
