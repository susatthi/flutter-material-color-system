import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../core/ui/component/bottom_sheet.dart';
import '../../../../core/ui/component/material.dart';
import '../../../color/state/current_dynamic_scheme_variant.dart';
import '../../../color/state/current_seed_color.dart';
import '../../entity/seed_color_history.dart';
import '../../state/current_seed_color_history_collection.dart';
import '../../use_case/delete_seed_color_history.dart';

class SeedColorHistoryBottomSheet extends StatelessWidget {
  const SeedColorHistoryBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomSheetContainer(
      child: SeedColorHistoryPanel(),
    );
  }
}

class SeedColorHistoryPanel extends ConsumerWidget {
  const SeedColorHistoryPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collection = ref.watch(seedColorHistoryCollectionNotifierProvider);
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 44,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Text(
                'Seed Color History',
                style: context.titleSmall,
                textAlign: TextAlign.center,
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
      onTap: () {
        ref
            .read(currentSeedColorNotifierProvider.notifier)
            .updateValue(history.color);
        ref
            .read(currentDynamicSchemeVariantNotifierProvider.notifier)
            .updateValue(history.variant);
        Navigator.of(context).pop();
      },
      leading: CircleAvatar(
        backgroundColor: history.color,
      ),
      title: Text(history.name),
      subtitle: Text(history.variant.name),
      trailing: _DeleteButton(
        history: history,
      ),
    );
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
      icon: const Icon(Icons.delete),
      tooltip: 'Delete',
    );
  }
}
