import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../core/ui/component/layout.dart';
import '../../../../core/ui/component/widget_ref_x.dart';
import '../../use_case/add_seed_color_history.dart';
import 'seed_color_history.dart';

class SeedColorHistoryPopupMenuButton extends ConsumerWidget {
  const SeedColorHistoryPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listenAsync(
      addSeedColorHistoryUseCaseProvider,
      success: (_) {
        ref.showSnackBar(
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
                const Gap(p16),
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
        await showDialog<void>(
          context: context,
          builder: (context) => const _SaveDialog(),
        );
    }
  }
}

class _SaveDialog extends ConsumerStatefulWidget {
  const _SaveDialog();

  @override
  ConsumerState<_SaveDialog> createState() => _SaveDialogState();
}

class _SaveDialogState extends ConsumerState<_SaveDialog> {
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isValid = _textController.text.isNotEmpty;
    return AlertDialog(
      title: const Text('Save Seed Color'),
      content: TextField(
        controller: _textController,
        decoration: const InputDecoration(
          hintText: 'Input name',
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: isValid
              ? () async {
                  final name = _textController.text;
                  await ref
                      .read(addSeedColorHistoryUseCaseProvider.notifier)
                      .invoke(name: name);
                  Navigator.of(context).pop();
                }
              : null,
          child: const Text('Save'),
        ),
      ],
    );
  }
}
