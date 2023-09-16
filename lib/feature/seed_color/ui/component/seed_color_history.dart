import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../core/state/current_seed_color.dart';
import '../../../../core/ui/component/layout.dart';
import '../../../../core/ui/component/material.dart';
import '../../../../core/ui/component/scaffold_messenger.dart';
import '../../entity/seed_color_history.dart';
import '../../state/current_seed_color_history_collection.dart';
import '../../use_case/add_seed_color_history.dart';
import '../../use_case/delete_seed_color_history.dart';

class SeedColorHistoryPanel extends ConsumerWidget {
  const SeedColorHistoryPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collection = ref.watch(currentSeedColorHistoryCollectionProvider);
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 44,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Text(
                'History',
                style: context.titleSmall,
                textAlign: TextAlign.center,
              ),
              const Positioned(
                top: 2,
                right: 4,
                child: _AddButton(),
              ),
            ],
          ),
        ),
        const Gap(8),
        ...collection.histories.map(
          (e) => _ListTile(
            history: e,
          ),
        ),
        if (collection.histories.isEmpty)
          Text(
            'NO HISTORY',
            style: context.caption,
          ),
        const Gap(16),
      ],
    );
  }
}

class _ListTile extends ConsumerWidget {
  const _ListTile({
    required this.history,
  });

  final SeedColorHistory history;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      contentPadding: const EdgeInsets.only(
        left: 16,
        right: 2,
      ),
      leading: _ColorAvatar(
        history: history,
      ),
      title: InkWell(
        // onTap: () => showDialog<void>(
        //   context: context,
        //   builder: (context) => const _EditDialog(),
        // ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(history.name),
        ),
      ),
      trailing: _DeleteButton(
        history: history,
      ),
    );
  }
}

class _ColorAvatar extends ConsumerStatefulWidget {
  const _ColorAvatar({
    required this.history,
  });

  final SeedColorHistory history;

  @override
  ConsumerState<_ColorAvatar> createState() => _ColorAvatarState();
}

class _ColorAvatarState extends ConsumerState<_ColorAvatar> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ref
          .read(currentSeedColorProvider.notifier)
          .set(seedColor: widget.history.color),
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: CircleAvatar(
        backgroundColor: isHover
            ? widget.history.color.withOpacity(0.5)
            : widget.history.color,
      ),
    );
  }
}

class _AddButton extends ConsumerWidget {
  const _AddButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final useCaseState = ref.watch(addSeedColorHistoryUseCaseProvider);
    return IconButton(
      onPressed: useCaseState.isLoading
          ? null
          : () => ref
              .read(addSeedColorHistoryUseCaseProvider.notifier)
              .invoke(color: ref.read(currentSeedColorProvider)),
      icon: const Icon(Icons.add_rounded),
      tooltip: 'Add current color to history',
    );
  }
}

//TODO
class _EditDialog extends ConsumerWidget {
  const _EditDialog();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(addSeedColorHistoryUseCaseProvider, (prev, next) {
      if (prev == null) {
        return;
      }
      if (prev.isLoading && next.hasValue) {
        Navigator.of(context).pop();
        ref.read(scaffoldMessengerProvider.notifier).showSnackBar(
              const SnackBar(
                content: Text('Edited history color'),
                width: snackBarWidth,
              ),
            );
      }
    });
    final color = ref.watch(currentSeedColorProvider);
    final useCaseState = ref.watch(addSeedColorHistoryUseCaseProvider);
    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: color,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed:
              useCaseState.isLoading ? null : () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: useCaseState.isLoading
              ? null
              : () => ref
                  .read(addSeedColorHistoryUseCaseProvider.notifier)
                  .invoke(color: color),
          child: const Text('Add'),
        ),
      ],
    );
  }
}

class _NameTextField extends StatefulWidget {
  const _NameTextField();

  @override
  State<_NameTextField> createState() => __NameTextFieldState();
}

class __NameTextFieldState extends State<_NameTextField> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const TextField();
  }
}

class _DeleteButton extends ConsumerWidget {
  const _DeleteButton({
    required this.history,
  });

  final SeedColorHistory history;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final useCaseState = ref.watch(deleteSeedColorHistoryUseCaseProvider);
    return IconButton(
      onPressed: useCaseState.isLoading
          ? null
          : () => ref
              .read(deleteSeedColorHistoryUseCaseProvider.notifier)
              .invoke(history: history),
      icon: const Icon(Icons.remove),
      color: context.outlineVariant,
      iconSize: 20,
    );
  }
}
