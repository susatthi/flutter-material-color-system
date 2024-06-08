import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ui/component/widget_ref_x.dart';
import '../use_case/launch_url.dart';

extension LauncherWidgetRefX on WidgetRef {
  void listenLauncher() {
    listen(
      launchUrlUseCaseProvider,
      (prev, next) async {
        await next.when(
          data: (data) {},
          error: (err, stack) async {
            await showErrorDialog(error: err.launcherErrorMessage);
          },
          loading: () {},
        );
      },
      onError: (err, stack) async {
        await showErrorDialog(error: err.launcherErrorMessage);
      },
    );
  }
}

extension on Object {
  String get launcherErrorMessage {
    if (this is LaunchUrlUseCaseException) {
      final error = this as LaunchUrlUseCaseException;
      return '${error.state.url} を開くことができませんでした。';
    }
    return toString();
  }
}
