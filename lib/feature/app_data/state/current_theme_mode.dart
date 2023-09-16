import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data_source/shared_preferences/shared_preferences.dart';

part 'current_theme_mode.g.dart';

@riverpod
class CurrentThemeMode extends _$CurrentThemeMode {
  @override
  ThemeMode build() => _prefs.getString(_key)?.toThemeMode() ?? ThemeMode.light;

  static const _key = 'themeMode';
  SharedPreferences get _prefs => ref.read(sharedPreferencesProvider);

  Future<void> toggle() async {
    final newal = state.toggle();
    await _prefs.setString(_key, newal.name);
    state = newal;
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
