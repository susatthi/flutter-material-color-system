import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app_data/app_data_source.dart';

part 'current_theme_mode.g.dart';

@riverpod
class CurrentThemeMode extends _$CurrentThemeMode {
  AppDataSource get _appDataSource => ref.read(appDataSourceProvider);

  @override
  ThemeMode build() => _appDataSource.getThemeMode() ?? ThemeMode.light;

  Future<void> toggle() async {
    final newThemeMode = state.toggle();
    await _appDataSource.setThemeMode(themeMode: newThemeMode);
    state = newThemeMode;
  }
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
