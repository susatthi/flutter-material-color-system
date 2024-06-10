import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/shared_preferences/shared_preferences.dart';

part 'current_dynamic_scheme_variant.g.dart';

@riverpod
class CurrentDynamicSchemeVariantNotifier
    extends _$CurrentDynamicSchemeVariantNotifier {
  static const _key = 'dynamicSchemeVariant';

  @override
  DynamicSchemeVariant build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    return prefs.getString(_key)?.toDynamicSchemeVariant() ??
        DynamicSchemeVariant.rainbow;
  }

  Future<void> updateValue(DynamicSchemeVariant value) async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setString(_key, value.name);
    state = value;
  }
}

extension on String {
  DynamicSchemeVariant? toDynamicSchemeVariant() =>
      DynamicSchemeVariant.values.firstWhereOrNull((e) => e.name == this);
}
