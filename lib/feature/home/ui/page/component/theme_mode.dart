import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/feature/app_data/state/current_theme_mode.dart';

class ToggleThemeModeButton extends ConsumerWidget {
  const ToggleThemeModeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(currentThemeModeProvider);
    return IconButton(
      onPressed: () async {
        await ref.read(currentThemeModeProvider.notifier).toggle();
      },
      icon: Icon(themeMode.icon),
    );
  }
}

extension on ThemeMode {
  IconData get icon {
    switch (this) {
      case ThemeMode.light:
      case ThemeMode.system:
        return Icons.dark_mode;
      case ThemeMode.dark:
        return Icons.light_mode;
    }
  }
}
