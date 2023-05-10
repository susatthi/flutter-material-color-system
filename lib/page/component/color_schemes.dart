import 'package:flutter/material.dart';

import 'palette.dart';

class ColorSchemes extends StatelessWidget {
  const ColorSchemes({
    super.key,
    required this.brightness,
    required this.colorScheme,
    this.padding = const EdgeInsets.all(8),
  });

  final Brightness brightness;
  final ColorScheme colorScheme;
  final EdgeInsets padding;

  List<List<PaletteItem>> get _palettes => [
        [
          PaletteItem(
            backgroundColor: colorScheme.primary,
            text: 'Primary',
            subText: _isDark ? 'Primary200' : 'Primary600',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onPrimary,
            text: 'On Primary',
            subText: _isDark ? 'Primary800' : 'White',
          ),
          PaletteItem(
            backgroundColor: colorScheme.primaryContainer,
            text: 'Primary Container',
            subText: _isDark ? 'Primary700' : 'Primary100',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onPrimaryContainer,
            text: 'On Primary Container',
            subText: _isDark ? 'Primary100' : 'Primary900',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: colorScheme.secondary,
            text: 'Secondary',
            subText: _isDark ? 'Secondary200' : 'Secondary600',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onSecondary,
            text: 'On Secondary',
            subText: _isDark ? 'Secondary800' : 'White',
          ),
          PaletteItem(
            backgroundColor: colorScheme.secondaryContainer,
            text: 'Secondary Container',
            subText: _isDark ? 'Secondary700' : 'Secondary100',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onSecondaryContainer,
            text: 'On Secondary Container',
            subText: _isDark ? 'Secondary100' : 'Secondary900',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: colorScheme.tertiary,
            text: 'Tertiary',
            subText: _isDark ? 'Tertiary200' : 'Tertiary600',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onTertiary,
            text: 'On Tertiary',
            subText: _isDark ? 'Tertiary800' : 'White',
          ),
          PaletteItem(
            backgroundColor: colorScheme.tertiaryContainer,
            text: 'Tertiary Container',
            subText: _isDark ? 'Tertiary700' : 'Tertiary100',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onTertiaryContainer,
            text: 'On Tertiary Container',
            subText: _isDark ? 'Tertiary100' : 'Tertiary900',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: colorScheme.error,
            text: 'Error',
            subText: _isDark ? 'Error200' : 'Error600',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onError,
            text: 'On Error',
            subText: _isDark ? 'Error800' : 'White',
          ),
          PaletteItem(
            backgroundColor: colorScheme.errorContainer,
            text: 'Error Container',
            subText: _isDark ? 'Error700' : 'Error100',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onErrorContainer,
            text: 'On Error Container',
            subText: _isDark ? 'Error100' : 'Error900',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: colorScheme.background,
            text: 'Background',
            subText: _isDark ? 'Neutral900' : 'Neutral1',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onBackground,
            text: 'On Background',
            subText: _isDark ? 'Neutral100' : 'Neutral900',
          ),
          PaletteItem(
            backgroundColor: colorScheme.surface,
            text: 'Surface',
            subText: _isDark ? 'Neutral900' : 'Neutral1',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onSurface,
            text: 'On Surface',
            subText: _isDark ? 'Neutral100' : 'Neutral900',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: colorScheme.outline,
            text: 'Outline',
            subText: _isDark ? 'Neutral-Variant400' : 'Neutral-Variant500',
          ),
          PaletteItem(
            backgroundColor: colorScheme.outlineVariant,
            text: 'Outline Variant',
            subText: _isDark ? 'Neutral-Variant800' : 'Neutral-Variant200',
          ),
          PaletteItem(
            backgroundColor: colorScheme.surfaceVariant,
            text: 'Surface Variant',
            subText: _isDark ? 'Neutral-Variant1700' : 'Neutral-Variant100',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onSurfaceVariant,
            text: 'On Surface Variant',
            subText: _isDark ? 'Neutral-Variant200' : 'Neutral-Variant700',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: colorScheme.inverseSurface,
            text: 'Inverse Surface',
            subText: _isDark ? 'Neutral1' : 'Neutral800',
          ),
          PaletteItem(
            backgroundColor: colorScheme.onInverseSurface,
            text: 'On Inverse Surface',
            subText: _isDark ? 'Neutral900' : 'Neutral50',
          ),
          const PaletteItem(),
          const PaletteItem(),
        ],
      ];

  bool get _isDark => brightness == Brightness.dark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: _palettes
            .map(
              (row) => Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: row
                      .map((item) => Expanded(child: Palette(item: item)))
                      .toList(),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
