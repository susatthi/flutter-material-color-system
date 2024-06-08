import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/ui/component/responsive.dart';
import '../../state/color_scheme_kind.dart';
import 'palette.dart';

part 'color_schemes.g.dart';

@riverpod
PaletteItem _paletteItem(
  _PaletteItemRef ref, {
  required ColorSchemeKind kind,
}) {
  final color = ref.watch(colorSchemeColorProvider(kind: kind));
  final name = ref.watch(colorSchemeColorNameProvider(kind: kind));
  return PaletteItem(
    backgroundColor: color,
    text: kind.title,
    subText: name,
  );
}

class ColorSchemes extends ConsumerWidget {
  const ColorSchemes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: Responsive(
        mobile: _MobileColorSchemes(),
        tablet: _TabletColorSchemes(),
        desktop: _DesktopColorSchemes(),
      ),
    );
  }
}

class _DesktopColorSchemes extends ConsumerWidget {
  const _DesktopColorSchemes();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.primary,
                onColor: ColorSchemeKind.onPrimary,
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.secondary,
                onColor: ColorSchemeKind.onSecondary,
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.tertiary,
                onColor: ColorSchemeKind.onTertiary,
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.error,
                onColor: ColorSchemeKind.onError,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.primaryContainer,
                onColor: ColorSchemeKind.onPrimaryContainer,
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.secondaryContainer,
                onColor: ColorSchemeKind.onSecondaryContainer,
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.tertiaryContainer,
                onColor: ColorSchemeKind.onTertiaryContainer,
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.errorContainer,
                onColor: ColorSchemeKind.onErrorContainer,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: SubPaletteCollection(
                fixed: ColorSchemeKind.primaryFixed,
                dim: ColorSchemeKind.primaryFixedDim,
                onFixed: ColorSchemeKind.onPrimaryFixed,
                onFixedVariant: ColorSchemeKind.onPrimaryFixedVariant,
              ),
            ),
            Expanded(
              child: SubPaletteCollection(
                fixed: ColorSchemeKind.secondaryFixed,
                dim: ColorSchemeKind.secondaryFixedDim,
                onFixed: ColorSchemeKind.onSecondaryFixed,
                onFixedVariant: ColorSchemeKind.onSecondaryFixedVariant,
              ),
            ),
            Expanded(
              child: SubPaletteCollection(
                fixed: ColorSchemeKind.tertiaryFixed,
                dim: ColorSchemeKind.tertiaryFixedDim,
                onFixed: ColorSchemeKind.onTertiaryFixed,
                onFixedVariant: ColorSchemeKind.onTertiaryFixedVariant,
              ),
            ),
            Expanded(
              child: InversePaletteCollection(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.surfaceDim,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.surface,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.surfaceBright,
                    ),
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
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.surfaceContainerLowest,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.surfaceContainerLow,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.surfaceContainer,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.surfaceContainerHigh,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.surfaceContainerHighest,
                    ),
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
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.onSurface,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.onSurfaceVariant,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.outline,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.outlineVariant,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.scrim,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Palette(
                  item: ref.watch(
                    _paletteItemProvider(
                      kind: ColorSchemeKind.shadow,
                    ),
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
  const _TabletColorSchemes();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.primary,
                onColor: ColorSchemeKind.onPrimary,
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.secondary,
                onColor: ColorSchemeKind.onSecondary,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.tertiary,
                onColor: ColorSchemeKind.onTertiary,
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.error,
                onColor: ColorSchemeKind.onError,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.primaryContainer,
                onColor: ColorSchemeKind.onPrimaryContainer,
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.secondaryContainer,
                onColor: ColorSchemeKind.onSecondaryContainer,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.tertiaryContainer,
                onColor: ColorSchemeKind.onTertiaryContainer,
              ),
            ),
            Expanded(
              child: MainPaletteCollection(
                color: ColorSchemeKind.errorContainer,
                onColor: ColorSchemeKind.onErrorContainer,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: SubPaletteCollection(
                fixed: ColorSchemeKind.primaryFixed,
                dim: ColorSchemeKind.primaryFixedDim,
                onFixed: ColorSchemeKind.onPrimaryFixed,
                onFixedVariant: ColorSchemeKind.onPrimaryFixedVariant,
              ),
            ),
            Expanded(
              child: SubPaletteCollection(
                fixed: ColorSchemeKind.secondaryFixed,
                dim: ColorSchemeKind.secondaryFixedDim,
                onFixed: ColorSchemeKind.onSecondaryFixed,
                onFixedVariant: ColorSchemeKind.onSecondaryFixedVariant,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: SubPaletteCollection(
                fixed: ColorSchemeKind.tertiaryFixed,
                dim: ColorSchemeKind.tertiaryFixedDim,
                onFixed: ColorSchemeKind.onTertiaryFixed,
                onFixedVariant: ColorSchemeKind.onTertiaryFixedVariant,
              ),
            ),
            Expanded(
              child: InversePaletteCollection(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceDim,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surface,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceBright,
                  ),
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
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceContainerLowest,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceContainerLow,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceContainer,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceContainerHigh,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceContainerHighest,
                  ),
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
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.onSurface,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.onSurfaceVariant,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.outline,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.outlineVariant,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.scrim,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.shadow,
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

class _MobileColorSchemes extends ConsumerWidget {
  const _MobileColorSchemes();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const MainPaletteCollection(
          color: ColorSchemeKind.primary,
          onColor: ColorSchemeKind.onPrimary,
        ),
        const MainPaletteCollection(
          color: ColorSchemeKind.secondary,
          onColor: ColorSchemeKind.onSecondary,
        ),
        const MainPaletteCollection(
          color: ColorSchemeKind.tertiary,
          onColor: ColorSchemeKind.onTertiary,
        ),
        const MainPaletteCollection(
          color: ColorSchemeKind.error,
          onColor: ColorSchemeKind.onError,
        ),
        const MainPaletteCollection(
          color: ColorSchemeKind.primaryContainer,
          onColor: ColorSchemeKind.onPrimaryContainer,
        ),
        const MainPaletteCollection(
          color: ColorSchemeKind.secondaryContainer,
          onColor: ColorSchemeKind.onSecondaryContainer,
        ),
        const MainPaletteCollection(
          color: ColorSchemeKind.tertiaryContainer,
          onColor: ColorSchemeKind.onTertiaryContainer,
        ),
        const MainPaletteCollection(
          color: ColorSchemeKind.errorContainer,
          onColor: ColorSchemeKind.onErrorContainer,
        ),
        const SubPaletteCollection(
          fixed: ColorSchemeKind.primaryFixed,
          dim: ColorSchemeKind.primaryFixedDim,
          onFixed: ColorSchemeKind.onPrimaryFixed,
          onFixedVariant: ColorSchemeKind.onPrimaryFixedVariant,
        ),
        const SubPaletteCollection(
          fixed: ColorSchemeKind.secondaryFixed,
          dim: ColorSchemeKind.secondaryFixedDim,
          onFixed: ColorSchemeKind.onSecondaryFixed,
          onFixedVariant: ColorSchemeKind.onSecondaryFixedVariant,
        ),
        const SubPaletteCollection(
          fixed: ColorSchemeKind.tertiaryFixed,
          dim: ColorSchemeKind.tertiaryFixedDim,
          onFixed: ColorSchemeKind.onTertiaryFixed,
          onFixedVariant: ColorSchemeKind.onTertiaryFixedVariant,
        ),
        const InversePaletteCollection(),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceDim,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surface,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceBright,
                  ),
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
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceContainerLowest,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceContainerLow,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceContainer,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceContainerHigh,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.surfaceContainerHighest,
                  ),
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
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.onSurface,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.onSurfaceVariant,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.outline,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.outlineVariant,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.scrim,
                  ),
                ),
              ),
              Palette(
                item: ref.watch(
                  _paletteItemProvider(
                    kind: ColorSchemeKind.shadow,
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

class MainPaletteCollection extends ConsumerWidget {
  const MainPaletteCollection({
    super.key,
    required this.color,
    required this.onColor,
  });

  final ColorSchemeKind color;
  final ColorSchemeKind onColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorItem = ref.watch(_paletteItemProvider(kind: color));
    final onColorItem = ref.watch(_paletteItemProvider(kind: onColor));
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Palette(item: colorItem),
          Palette(item: onColorItem),
        ],
      ),
    );
  }
}

class InversePaletteCollection extends ConsumerWidget {
  const InversePaletteCollection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inverseSurfaceItem =
        ref.watch(_paletteItemProvider(kind: ColorSchemeKind.inverseSurface));
    final onInverseSurfaceItem =
        ref.watch(_paletteItemProvider(kind: ColorSchemeKind.onInverseSurface));
    final inversePrimaryItem =
        ref.watch(_paletteItemProvider(kind: ColorSchemeKind.inversePrimary));
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Palette(item: inverseSurfaceItem),
          Palette(item: onInverseSurfaceItem),
          Palette(item: inversePrimaryItem),
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

  final ColorSchemeKind fixed;
  final ColorSchemeKind dim;
  final ColorSchemeKind onFixed;
  final ColorSchemeKind onFixedVariant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fixedItem = ref.watch(_paletteItemProvider(kind: fixed));
    final dimItem = ref.watch(_paletteItemProvider(kind: dim));
    final onFixedItem = ref.watch(_paletteItemProvider(kind: onFixed));
    final onFixedVariantItem =
        ref.watch(_paletteItemProvider(kind: onFixedVariant));
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Palette(item: fixedItem),
              ),
              Expanded(
                child: Palette(item: dimItem),
              ),
            ],
          ),
          Palette(item: onFixedItem),
          Palette(item: onFixedVariantItem),
        ],
      ),
    );
  }
}
