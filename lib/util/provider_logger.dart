import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logger.dart';

const _logPrefix = '[RIVERPOD]';

/// Riverpod の各 Provider のライフサイクルをログ出力するためのオブザーバー
///
/// ログ出力したい場合は Provider に name プロパティを設定すること
class ProviderLogger extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase<dynamic> provider,
    Object? value,
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.t(
        '$_logPrefix[ADD] $name: value = ${value?.toDebugString()}',
      );
    }
  }

  @override
  void providerDidFail(
    ProviderBase<dynamic> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.w(
        '$_logPrefix[FAIL] $name',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.t(
        '$_logPrefix[UPDATE] $name: '
        'newValue = ${newValue?.toDebugString()}',
      );
    }
  }

  @override
  void didDisposeProvider(
    ProviderBase<dynamic> provider,
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.t(
        '$_logPrefix[DISPOSE] $name',
      );
    }
  }
}

extension _ObjectEx on Object {
  /// 通常の AsyncValue.toString() だとスタックトレースが変に
  /// 出力されるのでスタックトレースは出力しない
  String toDebugString() {
    if (this is AsyncValue) {
      final asyncValue = this as AsyncValue;
      final content = [
        if (asyncValue.isLoading) 'isLoading: ${asyncValue.isLoading}',
        if (asyncValue.hasValue) 'value: ${asyncValue.value}',
        if (asyncValue.hasError) ...[
          'error: ${asyncValue.error}',
        ],
      ].join(', ');

      return '$runtimeType($content)';
    }
    return toString();
  }
}
