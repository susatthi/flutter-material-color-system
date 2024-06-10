import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../core/ui/component/layout.dart';
import '../../../../launcher/use_case/launch_url.dart';

class LaunchGitHubButton extends ConsumerWidget {
  const LaunchGitHubButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      onPressed: () => ref.read(launchUrlUseCaseProvider.notifier).invoke(
            Uri.parse(
              'https://github.com/susatthi/flutter-material-color-system',
            ),
          ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('GitHub'),
          Gap(p8),
          Icon(Icons.launch, size: 18),
        ],
      ),
    );
  }
}
