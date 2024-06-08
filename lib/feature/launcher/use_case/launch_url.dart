import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../../../core/exception/app_exception.dart';
import '../../../core/use_case/use_case.dart';
import '../../../util/logger.dart';

part 'launch_url.freezed.dart';
part 'launch_url.g.dart';

@riverpod
class LaunchUrlUseCase extends _$LaunchUrlUseCase with UseCase {
  @override
  FutureOr<LaunchUrlUseCaseState?> build() =>
      buildInternal(LaunchUrlUseCaseState.empty);

  Future<void> invoke(
    Uri url, {
    url_launcher.LaunchMode mode = url_launcher.LaunchMode.platformDefault,
  }) =>
      invokeInternal(() async {
        final state = LaunchUrlUseCaseState(url: url, mode: mode);
        try {
          await url_launcher.launchUrl(state.url, mode: state.mode);
          logger.i('Successful launch: url = ${state.url}');
          return state;
        } on FormatException catch (e, s) {
          logger.e(
            'Can\'t parse url: url = ${state.url}',
            error: e,
            stackTrace: s,
          );
          throw LaunchUrlUseCaseException(state, e, s);
        } on PlatformException catch (e, s) {
          logger.w(
            'Failure launch: url = ${state.url}',
            error: e,
            stackTrace: s,
          );
          throw LaunchUrlUseCaseException(state, e, s);
          // ignore: avoid_catching_errors
        } on ArgumentError catch (e, s) {
          logger.w(
            'Failure launch: url = ${state.url}',
            error: e,
            stackTrace: s,
          );
          throw LaunchUrlUseCaseException(state, e, s);
        }
      });
}

@freezed
class LaunchUrlUseCaseState with _$LaunchUrlUseCaseState {
  const factory LaunchUrlUseCaseState({
    required Uri url,
    required url_launcher.LaunchMode mode,
  }) = _LaunchUrlUseCaseState;

  factory LaunchUrlUseCaseState.empty() => LaunchUrlUseCaseState(
        url: Uri(),
        mode: url_launcher.LaunchMode.platformDefault,
      );
}

class LaunchUrlUseCaseException extends AppException {
  const LaunchUrlUseCaseException(
    this.state, [
    this.details,
    this.stacktrace,
  ]) : super('LaunchUrlUseCaseException');

  /// 状態
  final LaunchUrlUseCaseState state;

  /// 例外
  final dynamic details;

  /// スタックトレース
  final StackTrace? stacktrace;

  @override
  String toString() => 'LaunchUrlUseCaseException: $message, '
      '$state, details = $details';
}
