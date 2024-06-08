import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// ignore: invalid_use_of_internal_member
mixin UseCase<State> on BuildlessAutoDisposeAsyncNotifier<State> {
  bool _mounted = true;

  @protected
  void setUnmounted() => _mounted = false;

  @protected
  bool get mounted => _mounted;

  @protected
  FutureOr<State?> buildInternal([FutureOr<State?> Function()? future]) {
    ref.onDispose(setUnmounted);
    return future?.call();
  }

  @protected
  Future<void> invokeInternal(Future<State> Function() future) async {
    if (state.isLoading) {
      return;
    }
    state = const AsyncValue.loading();
    final newState = await AsyncValue.guard(() async {
      return future();
    });
    if (_mounted) {
      state = newState;
    }
  }
}
