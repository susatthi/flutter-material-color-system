import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../../util/logger.dart';
import 'entity/launch_data.dart';
import 'exception/launcher_exception.dart';

part 'launcher.g.dart';

@riverpod
class Launcher extends _$Launcher {
  @override
  FutureOr<LaunchData?> build() => null;

  Future<void> launchUrl(
    Uri url, {
    url_launcher.LaunchMode mode = url_launcher.LaunchMode.platformDefault,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final data = LaunchData(url: url, mode: mode);
      try {
        final result = await url_launcher.launchUrl(data.url, mode: data.mode);
        if (!result) {
          logger.w('Failure launch: url = ${data.url}');
          throw LauncherException(data);
        }
        logger.i('Successful launch: url = ${data.url}');
        return data;
      } on FormatException catch (e, s) {
        logger.e(
          'Can\'t parse url: url = ${data.url}',
          error: e,
          stackTrace: s,
        );
        throw LauncherException(data, e, s);
      } on PlatformException catch (e, s) {
        logger.w(
          'Failure launch: url = ${data.url}',
          error: e,
          stackTrace: s,
        );
        throw LauncherException(data, e, s);
        // ignore: avoid_catching_errors
      } on ArgumentError catch (e, s) {
        logger.w(
          'Failure launch: url = ${data.url}',
          error: e,
          stackTrace: s,
        );
        throw LauncherException(data, e, s);
      }
    });
  }
}
