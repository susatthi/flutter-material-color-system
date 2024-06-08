import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/ui/component/responsive.dart';
import '../../state/color_scheme.dart';
import '../../state/palette_item.dart';
import 'palette.dart';

class ColorSchemes extends ConsumerWidget {
  const ColorSchemes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collection = ref.watch(colorSchemeCollectionProvider);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Responsive(
        mobile: _MobileColorSchemes(collection: collection),
        tablet: _TabletColorSchemes(collection: collection),
        desktop: _DesktopColorSchemes(collection: collection),
      ),
    );
  }
}

class _DesktopColorSchemes extends ConsumerWidget {
  const _DesktopColorSchemes({
    required this.collection,
  });

  final ColorSchemeCollection collection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color: collection.getPaletteItem(ColorSchemeKind.primary),
                onColor: collection.getPaletteItem(ColorSchemeKind.onPrimary),
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: collection.getPaletteItem(ColorSchemeKind.secondary),
                onColor: collection.getPaletteItem(ColorSchemeKind.onSecondary),
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: collection.getPaletteItem(ColorSchemeKind.tertiary),
                onColor: collection.getPaletteItem(ColorSchemeKind.onTertiary),
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: collection.getPaletteItem(ColorSchemeKind.error),
                onColor: collection.getPaletteItem(ColorSchemeKind.onError),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color:
                    collection.getPaletteItem(ColorSchemeKind.primaryContainer),
                onColor: collection
                    .getPaletteItem(ColorSchemeKind.onPrimaryContainer),
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: collection
                    .getPaletteItem(ColorSchemeKind.secondaryContainer),
                onColor: collection
                    .getPaletteItem(ColorSchemeKind.onSecondaryContainer),
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: collection
                    .getPaletteItem(ColorSchemeKind.tertiaryContainer),
                onColor: collection
                    .getPaletteItem(ColorSchemeKind.onTertiaryContainer),
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color:
                    collection.getPaletteItem(ColorSchemeKind.errorContainer),
                onColor:
                    collection.getPaletteItem(ColorSchemeKind.onErrorContainer),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: SubPaletteCollection(
                fixed: collection.getPaletteItem(ColorSchemeKind.primaryFixed),
                dim: collection.getPaletteItem(ColorSchemeKind.primaryFixedDim),
                onFixed:
                    collection.getPaletteItem(ColorSchemeKind.onPrimaryFixed),
                onFixedVariant: collection
                    .getPaletteItem(ColorSchemeKind.onPrimaryFixedVariant),
              ),
            ),
            Expanded(
              child: SubPaletteCollection(
                fixed:
                    collection.getPaletteItem(ColorSchemeKind.secondaryFixed),
                dim: collection
                    .getPaletteItem(ColorSchemeKind.secondaryFixedDim),
                onFixed:
                    collection.getPaletteItem(ColorSchemeKind.onSecondaryFixed),
                onFixedVariant: collection
                    .getPaletteItem(ColorSchemeKind.onSecondaryFixedVariant),
              ),
            ),
            Expanded(
              child: SubPaletteCollection(
                fixed: collection.getPaletteItem(ColorSchemeKind.tertiaryFixed),
                dim:
                    collection.getPaletteItem(ColorSchemeKind.tertiaryFixedDim),
                onFixed:
                    collection.getPaletteItem(ColorSchemeKind.onTertiaryFixed),
                onFixedVariant: collection
                    .getPaletteItem(ColorSchemeKind.onTertiaryFixedVariant),
              ),
            ),
            Expanded(
              child: InversePaletteCollection(
                collection: collection,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.surfaceDim,
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.surface,
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.surfaceBright,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.surfaceContainerLowest,
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.surfaceContainerLow,
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.surfaceContainer,
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.surfaceContainerHigh,
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.surfaceContainerHighest,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.onSurface,
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.onSurfaceVariant,
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.outline,
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.outlineVariant,
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.scrim,
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: collection.getPaletteItem(
                    ColorSchemeKind.shadow,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TabletColorSchemes extends ConsumerWidget {
  const _TabletColorSchemes({
    required this.collection,
  });

  final ColorSchemeCollection collection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color: collection.getPaletteItem(ColorSchemeKind.primary),
                onColor: collection.getPaletteItem(ColorSchemeKind.onPrimary),
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: collection.getPaletteItem(ColorSchemeKind.secondary),
                onColor: collection.getPaletteItem(ColorSchemeKind.onSecondary),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color: collection.getPaletteItem(ColorSchemeKind.tertiary),
                onColor: collection.getPaletteItem(ColorSchemeKind.onTertiary),
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: collection.getPaletteItem(ColorSchemeKind.error),
                onColor: collection.getPaletteItem(ColorSchemeKind.onError),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color:
                    collection.getPaletteItem(ColorSchemeKind.primaryContainer),
                onColor: collection
                    .getPaletteItem(ColorSchemeKind.onPrimaryContainer),
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: collection
                    .getPaletteItem(ColorSchemeKind.secondaryContainer),
                onColor: collection
                    .getPaletteItem(ColorSchemeKind.onSecondaryContainer),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color: collection
                    .getPaletteItem(ColorSchemeKind.tertiaryContainer),
                onColor: collection
                    .getPaletteItem(ColorSchemeKind.onTertiaryContainer),
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color:
                    collection.getPaletteItem(ColorSchemeKind.errorContainer),
                onColor:
                    collection.getPaletteItem(ColorSchemeKind.onErrorContainer),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: SubPaletteCollection(
                fixed: collection.getPaletteItem(ColorSchemeKind.primaryFixed),
                dim: collection.getPaletteItem(ColorSchemeKind.primaryFixedDim),
                onFixed:
                    collection.getPaletteItem(ColorSchemeKind.onPrimaryFixed),
                onFixedVariant: collection
                    .getPaletteItem(ColorSchemeKind.onPrimaryFixedVariant),
              ),
            ),
            Expanded(
              child: SubPaletteCollection(
                fixed:
                    collection.getPaletteItem(ColorSchemeKind.secondaryFixed),
                dim: collection
                    .getPaletteItem(ColorSchemeKind.secondaryFixedDim),
                onFixed:
                    collection.getPaletteItem(ColorSchemeKind.onSecondaryFixed),
                onFixedVariant: collection
                    .getPaletteItem(ColorSchemeKind.onSecondaryFixedVariant),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: SubPaletteCollection(
                fixed: collection.getPaletteItem(ColorSchemeKind.tertiaryFixed),
                dim:
                    collection.getPaletteItem(ColorSchemeKind.tertiaryFixedDim),
                onFixed:
                    collection.getPaletteItem(ColorSchemeKind.onTertiaryFixed),
                onFixedVariant: collection
                    .getPaletteItem(ColorSchemeKind.onTertiaryFixedVariant),
              ),
            ),
            Expanded(
              child: InversePaletteCollection(
                collection: collection,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceDim,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surface,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceBright,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceContainerLowest,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceContainerLow,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceContainer,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceContainerHigh,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceContainerHighest,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.onSurface,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.onSurfaceVariant,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.outline,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.outlineVariant,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.scrim,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.shadow,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MobileColorSchemes extends ConsumerWidget {
  const _MobileColorSchemes({
    required this.collection,
  });

  final ColorSchemeCollection collection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        MainPaletteCollection(
          color: collection.getPaletteItem(ColorSchemeKind.primary),
          onColor: collection.getPaletteItem(ColorSchemeKind.onPrimary),
        ),
        MainPaletteCollection(
          color: collection.getPaletteItem(ColorSchemeKind.secondary),
          onColor: collection.getPaletteItem(ColorSchemeKind.onSecondary),
        ),
        MainPaletteCollection(
          color: collection.getPaletteItem(ColorSchemeKind.tertiary),
          onColor: collection.getPaletteItem(ColorSchemeKind.onTertiary),
        ),
        MainPaletteCollection(
          color: collection.getPaletteItem(ColorSchemeKind.error),
          onColor: collection.getPaletteItem(ColorSchemeKind.onError),
        ),
        MainPaletteCollection(
          color: collection.getPaletteItem(ColorSchemeKind.primaryContainer),
          onColor:
              collection.getPaletteItem(ColorSchemeKind.onPrimaryContainer),
        ),
        MainPaletteCollection(
          color: collection.getPaletteItem(ColorSchemeKind.secondaryContainer),
          onColor:
              collection.getPaletteItem(ColorSchemeKind.onSecondaryContainer),
        ),
        MainPaletteCollection(
          color: collection.getPaletteItem(ColorSchemeKind.tertiaryContainer),
          onColor:
              collection.getPaletteItem(ColorSchemeKind.onTertiaryContainer),
        ),
        MainPaletteCollection(
          color: collection.getPaletteItem(ColorSchemeKind.errorContainer),
          onColor: collection.getPaletteItem(ColorSchemeKind.onErrorContainer),
        ),
        SubPaletteCollection(
          fixed: collection.getPaletteItem(ColorSchemeKind.primaryFixed),
          dim: collection.getPaletteItem(ColorSchemeKind.primaryFixedDim),
          onFixed: collection.getPaletteItem(ColorSchemeKind.onPrimaryFixed),
          onFixedVariant:
              collection.getPaletteItem(ColorSchemeKind.onPrimaryFixedVariant),
        ),
        SubPaletteCollection(
          fixed: collection.getPaletteItem(ColorSchemeKind.secondaryFixed),
          dim: collection.getPaletteItem(ColorSchemeKind.secondaryFixedDim),
          onFixed: collection.getPaletteItem(ColorSchemeKind.onSecondaryFixed),
          onFixedVariant: collection
              .getPaletteItem(ColorSchemeKind.onSecondaryFixedVariant),
        ),
        SubPaletteCollection(
          fixed: collection.getPaletteItem(ColorSchemeKind.tertiaryFixed),
          dim: collection.getPaletteItem(ColorSchemeKind.tertiaryFixedDim),
          onFixed: collection.getPaletteItem(ColorSchemeKind.onTertiaryFixed),
          onFixedVariant:
              collection.getPaletteItem(ColorSchemeKind.onTertiaryFixedVariant),
        ),
        InversePaletteCollection(
          collection: collection,
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceDim,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surface,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceBright,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceContainerLowest,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceContainerLow,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceContainer,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceContainerHigh,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.surfaceContainerHighest,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.onSurface,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.onSurfaceVariant,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.outline,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.outlineVariant,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.scrim,
                ),
              ),
              Palette(
                item: collection.getPaletteItem(
                  ColorSchemeKind.shadow,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MainPaletteCollection extends ConsumerWidget {
  const MainPaletteCollection({
    super.key,
    required this.color,
    required this.onColor,
  });

  final PaletteItem color;
  final PaletteItem onColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Palette(item: color),
          Palette(item: onColor),
        ],
      ),
    );
  }
}

class InversePaletteCollection extends ConsumerWidget {
  const InversePaletteCollection({
    super.key,
    required this.collection,
  });

  final ColorSchemeCollection collection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Palette(
            item: collection.getPaletteItem(ColorSchemeKind.inverseSurface),
          ),
          Palette(
            item: collection.getPaletteItem(ColorSchemeKind.onInverseSurface),
          ),
          Palette(
            item: collection.getPaletteItem(ColorSchemeKind.inversePrimary),
          ),
        ],
      ),
    );
  }
}

class SubPaletteCollection extends ConsumerWidget {
  const SubPaletteCollection({
    super.key,
    required this.fixed,
    required this.dim,
    required this.onFixed,
    required this.onFixedVariant,
  });

  final PaletteItem fixed;
  final PaletteItem dim;
  final PaletteItem onFixed;
  final PaletteItem onFixedVariant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Palette(item: fixed),
              ),
              Expanded(
                child: Palette(item: dim),
              ),
            ],
          ),
          Palette(item: onFixed),
          Palette(item: onFixedVariant),
        ],
      ),
    );
  }
}
