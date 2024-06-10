import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/package_info/package_info.dart';

part 'app_version.g.dart';

@riverpod
String appVersionText(AppVersionTextRef ref) {
  final packageInfo = ref.watch(packageInfoProvider);
  return 'v${packageInfo.version}(${packageInfo.buildNumber})';
}
