import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../core/ui/component/layout.dart';
import '../../../../core/ui/component/widget_ref_x.dart';
import '../../../color/state/current_seed_color.dart';
import '../../use_case/add_seed_color_history.dart';
import 'seed_color_history.dart';

class SeedColorHistoryPopupMenuButton extends ConsumerWidget {
  const SeedColorHistoryPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listenAsync(
      addSeedColorHistoryUseCaseProvider,
      success: (_) {
        ref.showSnakBar(
          const SnackBar(
            content: Text('Saved.'),
            width: snackBarWidth,
          ),
        );
      },
    );
    return PopupMenuButton<String>(
      itemBuilder: (context) => [
        ..._MenuItem.values.map(
          (e) => PopupMenuItem(
            onTap: () => ref.onTapMenuItem(e),
            child: Row(
              children: [
                Icon(e.icon),
                const Gap(p8),
                Text(e.label),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

enum _MenuItem {
  load,
  save,
  ;

  String get label => switch (this) {
        _MenuItem.load => 'LOAD',
        _MenuItem.save => 'SAVE',
      };

  IconData get icon => switch (this) {
        _MenuItem.load => Icons.file_open,
        _MenuItem.save => Icons.save,
      };
}

extension on WidgetRef {
  Future<void> onTapMenuItem(_MenuItem item) async {
    switch (item) {
      case _MenuItem.load:
        await showModalBottomSheet<void>(
          context: context,
          builder: (context) => const SeedColorHistoryBottomSheet(),
        );
      case _MenuItem.save:
        final currentSeedColor = read(currentSeedColorProvider);
        await read(addSeedColorHistoryUseCaseProvider.notifier)
            .invoke(color: currentSeedColor);
    }
  }
}
