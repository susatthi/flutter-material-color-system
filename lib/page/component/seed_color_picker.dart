import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../theme.dart';

class SeedColorPicker extends ConsumerWidget {
  const SeedColorPicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 2,
      child: ColorPicker(
        color: ref.watch(seedColorProvider),
        onColorChanged: (color) {
          ref.read(seedColorProvider.notifier).state = color;
        },
        width: 48,
        height: 48,
        borderRadius: 25,
        heading: Text(
          'Select color',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        subheading: Text(
          'Select color shade',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        wheelDiameter: 320,
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
