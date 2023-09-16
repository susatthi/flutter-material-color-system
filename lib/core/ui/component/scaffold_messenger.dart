import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scaffold_messenger.g.dart';

@riverpod
class ScaffoldMessenger extends _$ScaffoldMessenger {
  @override
  GlobalKey<ScaffoldMessengerState> build() =>
      GlobalKey<ScaffoldMessengerState>();

  ScaffoldMessengerState? get _currentState => state.currentState;

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? showSnackBar(
    SnackBar snackBar,
  ) {
    return _currentState?.showSnackBar(snackBar);
  }

  void hideCurrentSnackBar({
    SnackBarClosedReason reason = SnackBarClosedReason.hide,
  }) {
    _currentState?.hideCurrentSnackBar(reason: reason);
  }
}
