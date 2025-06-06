import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'messenger.dart';

extension WidgetRefX on WidgetRef {
  ScaffoldMessengerState? get _currentState =>
      read(scaffoldMessengerKeyProvider).currentState;

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

  Future<T?> showDialog<T>({
    required Widget child,
    bool barrierDismissible = true,
    Color? barrierColor = Colors.black54,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
  }) async {
    return material.showDialog<T>(
      context: context,
      builder: (_) => child,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
    );
  }

  Future<void> showErrorDialog({
    required Object error,
    bool barrierDismissible = true,
    Color? barrierColor = Colors.black54,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
  }) async {
    return material.showDialog<void>(
      context: context,
      builder: (context) => ErrorDialog(error: error),
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
    );
  }

  void listenAsync<T>(
    ProviderListenable<AsyncValue<T>> provider, {
    void Function(T data)? success,
    void Function(Object error, StackTrace stackTrace)? error,
    void Function()? loading,
  }) {
    listen<AsyncValue<T>>(
      provider,
      (prev, next) async {
        await next.when(
          data: (data) {
            success?.call(data);
          },
          error: (err, stack) async {
            await showErrorDialog(error: err);
            error?.call(err, stack);
          },
          loading: () {
            loading?.call();
          },
        );
      },
      onError: (err, stack) async {
        await showErrorDialog(error: err);
        error?.call(err, stack);
      },
    );
  }
}
