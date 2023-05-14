import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data_source/app_data/app_data_source.dart';

part 'current_seed_color.g.dart';

@riverpod
class CurrentSeedColor extends _$CurrentSeedColor {
  AppDataSource get _appDataSource => ref.read(appDataSourceProvider);

  @override
  Color build() => _appDataSource.getSeedColor() ?? const Color(0xFF6750A4);

  Future<void> update(Color color) async {
    await _appDataSource.setSeedColor(seedColor: color);
    state = color;
  }
}
