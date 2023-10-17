import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/ui/component/layout.dart';
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
    required this.brightness,
    required this.seedColor,
    this.padding = const EdgeInsets.all(commonPadding),
  });

  final Brightness brightness;
  final Color seedColor;
  final EdgeInsets padding;

  List<List<ColorSchemeKind>> get _colorSchemeKinds => [
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
          ColorSchemeKind.surfaceContainerLow,
        ],
        [
          ColorSchemeKind.tertiary,
          ColorSchemeKind.onTertiary,
          ColorSchemeKind.tertiaryContainer,
          ColorSchemeKind.onTertiaryContainer,
          ColorSchemeKind.surfaceContainer,
        ],
        [
          ColorSchemeKind.error,
          ColorSchemeKind.onError,
          ColorSchemeKind.errorContainer,
          ColorSchemeKind.onErrorContainer,
          ColorSchemeKind.surfaceContainerHigh,
        ],
        [
          ColorSchemeKind.background,
          ColorSchemeKind.onBackground,
          ColorSchemeKind.surface,
          ColorSchemeKind.onSurface,
          ColorSchemeKind.surfaceContainerHighest,
        ],
        [
          ColorSchemeKind.outline,
          ColorSchemeKind.outlineVariant,
          ColorSchemeKind.surfaceVariant,
          ColorSchemeKind.onSurfaceVariant,
          ColorSchemeKind.surfaceBright,
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
      child: Column(
        children: _colorSchemeKinds
            .map(
              (row) => Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: row
                      .asMap()
                      .entries
                      .map(
                        (entry) => Expanded(
                          child: Padding(
                            padding: entry.key == row.length - 1
                                ? const EdgeInsets.only(left: commonPadding)
                                : EdgeInsets.zero,
                            child: Palette(
                              item: ref.watch(
                                _paletteItemProvider(kind: entry.value),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
