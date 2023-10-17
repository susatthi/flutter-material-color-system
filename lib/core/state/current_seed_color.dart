import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/shared_preferences/shared_preferences.dart';

part 'current_seed_color.g.dart';

@riverpod
class CurrentSeedColor extends _$CurrentSeedColor {
  @override
  Color build() => _prefs.getInt(_key)?.toColor() ?? const Color(0xFF6750A4);

  static const _key = 'seedColor';
  SharedPreferences get _prefs => ref.read(sharedPreferencesProvider);

  Future<void> set({
    required Color seedColor,
  }) async {
    await _prefs.setInt(_key, seedColor.value);
    state = seedColor;
  }
}

extension on int {
  Color toColor() => Color(this);
}
