import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../core/ui/component/layout.dart';
import '../../../../../core/ui/component/material.dart';
import '../../../../color/state/current_seed_color.dart';
import '../../../../seed_color_history/ui/component/seed_color_history.dart';

class ShowSeedColorPickerDialogButton extends ConsumerWidget {
  const ShowSeedColorPickerDialogButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seedColor = ref.watch(currentSeedColorNotifierProvider);
    return IconButton(
      onPressed: () => showDialog<void>(
        context: context,
        builder: (context) => const SeedColorPickerDialog(),
      ),
      icon: SizedBox.square(
        dimension: 24,
        child: CircleAvatar(
          backgroundColor: seedColor,
        ),
      ),
      tooltip: 'Change color',
    );
  }
}

class SeedColorPickerDialog extends StatelessWidget {
  const SeedColorPickerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            SeedColorPicker(
              wheelDiameter: 160,
              colorDimension: 32,
            ),
            SeedColorHistoryPanel(),
          ],
        ),
      ),
    );
  }
}

class SeedColorPicker extends ConsumerWidget {
  const SeedColorPicker({
    super.key,
    this.wheelDiameter = 320,
    this.colorDimension = 48,
  });

  final double wheelDiameter;
  final double colorDimension;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Gap(p8),
        Text(
          'Seed Color',
          style: context.titleMedium,
        ),
        const Gap(p4),
        ColorPicker(
          color: ref.watch(currentSeedColorNotifierProvider),
          onColorChanged: (color) async {
            await ref
                .read(currentSeedColorNotifierProvider.notifier)
                .updateValue(color);
          },
          width: colorDimension,
          height: colorDimension,
          borderRadius: 25,
          subheading: Text(
            'Select color shade',
            style: context.titleSmall,
          ),
          wheelDiameter: wheelDiameter,
          wheelSubheading: Text(
            'Selected color and its shades',
            style: context.titleSmall,
          ),
          showMaterialName: true,
          showColorName: true,
          showColorCode: true,
          copyPasteBehavior: const ColorPickerCopyPasteBehavior(
            longPressMenu: true,
          ),
          materialNameTextStyle: context.bodySmall,
          colorNameTextStyle: context.bodySmall,
          colorCodeTextStyle: context.bodySmall,
          pickersEnabled: const {
            ColorPickerType.primary: true,
            ColorPickerType.accent: true,
            ColorPickerType.wheel: true,
          },
        ),
      ],
    );
  }
}
