import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/launcher/launcher.dart';

class LaunchGitHubButton extends ConsumerWidget {
  const LaunchGitHubButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () => ref.read(launcherProvider.notifier).launchUrl(
            Uri.parse(
              'https://github.com/susatthi/flutter-material-color-system',
            ),
          ),
      icon: const Icon(Icons.code),
    );
  }
}
