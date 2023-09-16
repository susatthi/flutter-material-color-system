import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_hover_color.g.dart';

@riverpod
class CurrentHoverColor extends _$CurrentHoverColor {
  @override
  Color? build() => null;

  Future<void> update(Color color) async {
    state = color;
  }

  void clear() {
    state = null;
  }
}
