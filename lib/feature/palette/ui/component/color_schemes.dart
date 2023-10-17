import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/ui/component/layout.dart';
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
  const ColorSchemes({
    super.key,
    this.padding = const EdgeInsets.all(commonPadding),
  });

  final EdgeInsets padding;
  List<List<ColorSchemeKind>> get _mobileKinds => [
        [
          ColorSchemeKind.primary,
        ],
        [
          ColorSchemeKind.onPrimary,
        ],
        [
          ColorSchemeKind.primaryContainer,
        ],
        [
          ColorSchemeKind.onPrimaryContainer,
        ],
        [
          ColorSchemeKind.secondary,
        ],
        [
          ColorSchemeKind.onSecondary,
        ],
        [
          ColorSchemeKind.secondaryContainer,
        ],
        [
          ColorSchemeKind.onSecondaryContainer,
        ],
        [
          ColorSchemeKind.tertiary,
        ],
        [
          ColorSchemeKind.onTertiary,
        ],
        [
          ColorSchemeKind.tertiaryContainer,
        ],
        [
          ColorSchemeKind.onTertiaryContainer,
        ],
        [
          ColorSchemeKind.error,
        ],
        [
          ColorSchemeKind.onError,
        ],
        [
          ColorSchemeKind.errorContainer,
        ],
        [
          ColorSchemeKind.onErrorContainer,
        ],
        [
          ColorSchemeKind.background,
        ],
        [
          ColorSchemeKind.onBackground,
        ],
        [
          ColorSchemeKind.surface,
        ],
        [
          ColorSchemeKind.onSurface,
        ],
        [
          ColorSchemeKind.outline,
        ],
        [
          ColorSchemeKind.outlineVariant,
        ],
        [
          ColorSchemeKind.surfaceVariant,
        ],
        [
          ColorSchemeKind.onSurfaceVariant,
        ],
        [
          ColorSchemeKind.surfaceTint,
        ],
        [
          ColorSchemeKind.inversePrimary,
        ],
        [
          ColorSchemeKind.inverseSurface,
        ],
        [
          ColorSchemeKind.onInverseSurface,
        ],
        [
          ColorSchemeKind.surfaceContainerLowest,
        ],
        [
          ColorSchemeKind.surfaceBright,
        ],
        [
          ColorSchemeKind.surfaceContainerLow,
        ],
        [
          ColorSchemeKind.surfaceContainer,
        ],
        [
          ColorSchemeKind.surfaceContainerHigh,
        ],
        [
          ColorSchemeKind.surfaceContainerHighest,
        ],
        [
          ColorSchemeKind.surfaceDim,
        ],
      ];

  List<List<ColorSchemeKind>> get _tabletKinds => [
        [
          ColorSchemeKind.primary,
          ColorSchemeKind.onPrimary,
        ],
        [
          ColorSchemeKind.primaryContainer,
          ColorSchemeKind.onPrimaryContainer,
        ],
        [
          ColorSchemeKind.secondary,
          ColorSchemeKind.onSecondary,
        ],
        [
          ColorSchemeKind.secondaryContainer,
          ColorSchemeKind.onSecondaryContainer,
        ],
        [
          ColorSchemeKind.tertiary,
          ColorSchemeKind.onTertiary,
        ],
        [
          ColorSchemeKind.tertiaryContainer,
          ColorSchemeKind.onTertiaryContainer,
        ],
        [
          ColorSchemeKind.error,
          ColorSchemeKind.onError,
        ],
        [
          ColorSchemeKind.errorContainer,
          ColorSchemeKind.onErrorContainer,
        ],
        [
          ColorSchemeKind.background,
          ColorSchemeKind.onBackground,
        ],
        [
          ColorSchemeKind.surface,
          ColorSchemeKind.onSurface,
        ],
        [
          ColorSchemeKind.outline,
          ColorSchemeKind.outlineVariant,
        ],
        [
          ColorSchemeKind.surfaceVariant,
          ColorSchemeKind.onSurfaceVariant,
        ],
        [
          ColorSchemeKind.surfaceTint,
          ColorSchemeKind.inversePrimary,
        ],
        [
          ColorSchemeKind.inverseSurface,
          ColorSchemeKind.onInverseSurface,
        ],
        [
          ColorSchemeKind.surfaceContainerLowest,
        ],
        [
          ColorSchemeKind.surfaceBright,
        ],
        [
          ColorSchemeKind.surfaceContainerLow,
        ],
        [
          ColorSchemeKind.surfaceContainer,
        ],
        [
          ColorSchemeKind.surfaceContainerHigh,
        ],
        [
          ColorSchemeKind.surfaceContainerHighest,
        ],
        [
          ColorSchemeKind.surfaceDim,
        ],
      ];

  List<List<ColorSchemeKind>> get _desktopKinds => [
        [
          ColorSchemeKind.primary,
          ColorSchemeKind.onPrimary,
          ColorSchemeKind.primaryContainer,
          ColorSchemeKind.onPrimaryContainer,
          ColorSchemeKind.surfaceContainerLowest,
        ],
        [
          ColorSchemeKind.secondary,
          ColorSchemeKind.onSecondary,
          ColorSchemeKind.secondaryContainer,
          ColorSchemeKind.onSecondaryContainer,
          ColorSchemeKind.surfaceBright,
        ],
        [
          ColorSchemeKind.tertiary,
          ColorSchemeKind.onTertiary,
          ColorSchemeKind.tertiaryContainer,
          ColorSchemeKind.onTertiaryContainer,
          ColorSchemeKind.surfaceContainerLow,
        ],
        [
          ColorSchemeKind.error,
          ColorSchemeKind.onError,
          ColorSchemeKind.errorContainer,
          ColorSchemeKind.onErrorContainer,
          ColorSchemeKind.surfaceContainer,
        ],
        [
          ColorSchemeKind.background,
          ColorSchemeKind.onBackground,
          ColorSchemeKind.surface,
          ColorSchemeKind.onSurface,
          ColorSchemeKind.surfaceContainerHigh,
        ],
        [
          ColorSchemeKind.outline,
          ColorSchemeKind.outlineVariant,
          ColorSchemeKind.surfaceVariant,
          ColorSchemeKind.onSurfaceVariant,
          ColorSchemeKind.surfaceContainerHighest,
        ],
        [
          ColorSchemeKind.surfaceTint,
          ColorSchemeKind.inversePrimary,
          ColorSchemeKind.inverseSurface,
          ColorSchemeKind.onInverseSurface,
          ColorSchemeKind.surfaceDim,
        ],
      ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: padding,
      child: Responsive(
        mobile: _Grid(
          kinds: _mobileKinds,
        ),
        tablet: _Grid(
          kinds: _tabletKinds,
        ),
        desktop: _Grid(
          kinds: _desktopKinds,
          verticalPadding: const EdgeInsets.all(4),
        ),
      ),
    );
  }
}

class _Grid extends ConsumerWidget {
  const _Grid({
    required this.kinds,
    this.verticalPadding = EdgeInsets.zero,
  });

  final List<List<ColorSchemeKind>> kinds;
  final EdgeInsets verticalPadding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: kinds
          .map(
            (row) => Padding(
              padding: verticalPadding,
              child: Row(
                children: row
                    .asMap()
                    .entries
                    .map(
                      (entry) => Expanded(
                        child: Palette(
                          item: ref.watch(
                            _paletteItemProvider(kind: entry.value),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          )
          .toList(),
    );
  }
}
