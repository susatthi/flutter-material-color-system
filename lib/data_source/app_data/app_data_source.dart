import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preferences.dart';

part 'app_data_source.g.dart';

@riverpod
AppDataSource appDataSource(AppDataSourceRef ref) => AppDataSource(ref);

class AppDataSource {
  AppDataSource(this.ref);

  final Ref ref;

  SharedPreferences get prefs => ref.read(sharedPreferencesProvider);

  Future<void> setSeedColor({
    required Color seedColor,
  }) async {
    await prefs.setInt(AppDataSourceKey.seedColor.name, seedColor.value);
  }

  Color? getSeedColor() =>
      prefs.getInt(AppDataSourceKey.seedColor.name)?.toColor();

  Future<void> setThemeMode({
    required ThemeMode themeMode,
  }) async {
    await prefs.setString(AppDataSourceKey.themeMode.name, themeMode.name);
  }

  ThemeMode? getThemeMode() =>
      prefs.getString(AppDataSourceKey.themeMode.name)?.toThemeMode();
}

enum AppDataSourceKey {
  seedColor,
  themeMode,
  ;
}

extension on int {
  Color toColor() => Color(this);
}

extension on String {
  ThemeMode toThemeMode() => ThemeMode.values.firstWhere((e) => e.name == this);
}
