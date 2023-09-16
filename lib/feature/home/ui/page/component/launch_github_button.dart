import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchGitHubButton extends StatelessWidget {
  const LaunchGitHubButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final url = Uri.parse(
          'https://github.com/susatthi/flutter-material-color-system',
        );
        await launchUrl(url);
      },
      icon: const Icon(Icons.code),
    );
  }
}
