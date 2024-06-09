import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/ui/component/material.dart';
import '../../../../launcher/use_case/launch_url.dart';

class LaunchGitHubButton extends ConsumerWidget {
  const LaunchGitHubButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton.icon(
      onPressed: () => ref.read(launchUrlUseCaseProvider.notifier).invoke(
            Uri.parse(
              'https://github.com/susatthi/flutter-material-color-system',
            ),
          ),
      icon: const Icon(Icons.code),
      label: const Text('GitHub'),
      style: TextButton.styleFrom(
        foregroundColor: context.onPrimary,
      ),
    );
  }
}
