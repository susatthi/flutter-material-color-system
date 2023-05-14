import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../state/current_seed_color.dart';

class SeedColorButton extends ConsumerWidget {
  const SeedColorButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seedColor = ref.watch(currentSeedColorProvider);
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
    );
  }
}

class SeedColorPickerDialog extends StatelessWidget {
  const SeedColorPickerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      content: SingleChildScrollView(
        child: SeedColorPicker(
          wheelDiameter: 160,
          colorDimension: 32,
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
    return Card(
      elevation: 2,
      child: ColorPicker(
        color: ref.watch(currentSeedColorProvider),
        onColorChanged: (color) async {
          await ref.read(currentSeedColorProvider.notifier).update(color);
        },
        width: colorDimension,
        height: colorDimension,
        borderRadius: 25,
        heading: Text(
          'Select color',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        subheading: Text(
          'Select color shade',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        wheelDiameter: wheelDiameter,
        wheelSubheading: Text(
          'Selected color and its shades',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        showMaterialName: true,
        showColorName: true,
        showColorCode: true,
        copyPasteBehavior: const ColorPickerCopyPasteBehavior(
          longPressMenu: true,
        ),
        materialNameTextStyle: Theme.of(context).textTheme.bodySmall,
        colorNameTextStyle: Theme.of(context).textTheme.bodySmall,
        colorCodeTextStyle: Theme.of(context).textTheme.bodySmall,
        pickersEnabled: const {
          ColorPickerType.primary: true,
          ColorPickerType.accent: true,
          ColorPickerType.wheel: true,
        },
      ),
    );
  }
}
