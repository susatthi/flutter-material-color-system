import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../core/ui/component/layout.dart';
import '../../../../core/ui/component/material.dart';
import '../../../color/state/current_dynamic_scheme_variant.dart';

class DynamicSchemeVariantChips extends ConsumerWidget {
  const DynamicSchemeVariantChips({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentVariant =
        ref.watch(currentDynamicSchemeVariantNotifierProvider);
    return Column(
      children: [
        const Gap(p8),
        Text(
          'Dynamic Scheme Variant',
          style: context.titleMedium,
        ),
        const Gap(p16),
        Wrap(
          children: [
            ...DynamicSchemeVariant.values.map(
              (variant) => _Chip(
                variant: variant,
                selected: variant == currentVariant,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _Chip extends ConsumerWidget {
  const _Chip({
    required this.variant,
    required this.selected,
  });

  final DynamicSchemeVariant variant;
  final bool selected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: FilterChip(
        onSelected: (value) {
          if (value) {
            ref
                .read(currentDynamicSchemeVariantNotifierProvider.notifier)
                .updateValue(variant);
          }
        },
        selected: selected,
        label: Text(variant.label),
        tooltip: variant.description,
      ),
    );
  }
}

extension on DynamicSchemeVariant {
  String get label => switch (this) {
        DynamicSchemeVariant.rainbow => '$name (3.19 compatible)',
        _ => name,
      };

  String get description => switch (this) {
        DynamicSchemeVariant.tonalSpot =>
          '''Default for Material theme colors. Builds pastel palettes with a low chroma.''',
        DynamicSchemeVariant.fidelity =>
          '''The resulting color palettes match seed color, even if the seed color is very bright (high chroma).''',
        DynamicSchemeVariant.monochrome =>
          '''All colors are grayscale, no chroma.''',
        DynamicSchemeVariant.neutral =>
          '''Close to grayscale, a hint of chroma.''',
        DynamicSchemeVariant.vibrant =>
          '''Pastel colors, high chroma palettes. The primary palette's chroma is at maximum. Use `fidelity` instead if tokens should alter their tone to match the palette vibrancy.''',
        DynamicSchemeVariant.expressive =>
          '''Pastel colors, medium chroma palettes. The primary palette's hue is different from the seed color, for variety.''',
        DynamicSchemeVariant.content =>
          '''Almost identical to `fidelity`. Tokens and palettes match the seed color. primaryContainer is the seed color, adjusted to ensure contrast with surfaces. The tertiary palette is analogue of the seed color.''',
        DynamicSchemeVariant.rainbow =>
          '''A playful theme - the seed color's hue does not appear in the theme.''',
        DynamicSchemeVariant.fruitSalad =>
          '''A playful theme - the seed color's hue does not appear in the theme.''',
      };
}
