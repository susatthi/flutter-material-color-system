import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/data/package_info/app_version.dart';
import '../../../../../core/ui/component/material.dart';

class AppVersionText extends ConsumerWidget {
  const AppVersionText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = ref.watch(appVersionTextProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: context.caption?.copyWith(
          fontSize: 12,
        ),
      ),
    );
  }
}
