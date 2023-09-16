import 'package:flutter_riverpod/flutter_riverpod.dart';

extension IntEx on int {
  /// 大文字、2桁の16進数の文字列に変換する
  String toHexString() => toRadixString(16).padLeft(2, '0').toUpperCase();
}

extension AsyncValueXX<T> on AsyncValue<T> {
  /// エラーのみ処理する
  void whenError(
    void Function(Object error, StackTrace? stackTrace) error,
  ) {
    if (isLoading) {
      return;
    }
    return map<void>(
      data: (_) {},
      error: (e) => error(e.error, e.stackTrace),
      loading: (_) {},
    );
  }
}
