import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/shared_preferences/shared_preferences.dart';

part 'current_seed_color.g.dart';

@riverpod
class CurrentSeedColor extends _$CurrentSeedColor {
  static const _key = 'seedColor';

  @override
  Color build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    return prefs.getInt(_key)?.toColor() ?? const Color(0xFF6750A4);
  }

  Future<void> updateValue(Color value) async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setInt(_key, value.value);
    state = value;
  }
}

extension on int {
  Color toColor() => Color(this);
}
