import 'package:flutter/material.dart';

import 'layout.dart';
import 'material.dart';
import 'palette.dart';

class ColorSchemes extends StatelessWidget {
  const ColorSchemes({
    super.key,
    required this.brightness,
    required this.seedColor,
    this.padding = const EdgeInsets.all(commonPadding),
  });

  final Brightness brightness;
  final Color seedColor;
  final EdgeInsets padding;

  ColorScheme get _colorScheme => ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: brightness,
      );

  MaterialSurfaceColor get _materialSurface => MaterialSurfaceColor.fromSeed(
        seedColor: seedColor,
        brightness: brightness,
      );

  List<List<PaletteItem>> get _palettes => [
        [
          PaletteItem(
            backgroundColor: _colorScheme.primary,
            text: 'Primary',
            subText: _isLight ? 'Primary600' : 'Primary200',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onPrimary,
            text: 'On Primary',
            subText: _isLight ? 'White' : 'Primary800',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.primaryContainer,
            text: 'Primary Container',
            subText: _isLight ? 'Primary100' : 'Primary700',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onPrimaryContainer,
            text: 'On Primary Container',
            subText: _isLight ? 'Primary900' : 'Primary100',
          ),
          PaletteItem(
            backgroundColor: _materialSurface.surfaceContainerLowest,
            text: 'Surface Container Lowest',
            subText: _isLight ? 'White' : 'Neutral960',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: _colorScheme.secondary,
            text: 'Secondary',
            subText: _isLight ? 'Secondary600' : 'Secondary200',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onSecondary,
            text: 'On Secondary',
            subText: _isLight ? 'White' : 'Secondary800',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.secondaryContainer,
            text: 'Secondary Container',
            subText: _isLight ? 'Secondary100' : 'Secondary700',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onSecondaryContainer,
            text: 'On Secondary Container',
            subText: _isLight ? 'Secondary900' : 'Secondary100',
          ),
          PaletteItem(
            backgroundColor: _materialSurface.surfaceContainerLow,
            text: 'Surface Container Low',
            subText: _isLight ? 'Neutral40' : 'Neutral900',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: _colorScheme.tertiary,
            text: 'Tertiary',
            subText: _isLight ? 'Tertiary600' : 'Tertiary200',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onTertiary,
            text: 'On Tertiary',
            subText: _isLight ? 'White' : 'Tertiary800',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.tertiaryContainer,
            text: 'Tertiary Container',
            subText: _isLight ? 'Tertiary100' : 'Tertiary700',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onTertiaryContainer,
            text: 'On Tertiary Container',
            subText: _isLight ? 'Tertiary900' : 'Tertiary100',
          ),
          PaletteItem(
            backgroundColor: _materialSurface.surfaceContainer,
            text: 'Surface Container',
            subText: _isLight ? 'Neutral60' : 'Neutral880',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: _colorScheme.error,
            text: 'Error',
            subText: _isLight ? 'Error600' : 'Error200',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onError,
            text: 'On Error',
            subText: _isLight ? 'White' : 'Error800',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.errorContainer,
            text: 'Error Container',
            subText: _isLight ? 'Error100' : 'Error700',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onErrorContainer,
            text: 'On Error Container',
            subText: _isLight ? 'Error900' : 'Error100',
          ),
          PaletteItem(
            backgroundColor: _materialSurface.surfaceContainerHigh,
            text: 'Surface Container High',
            subText: _isLight ? 'Neutral80' : 'Neutral830',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: _colorScheme.background,
            text: 'Background',
            subText: _isLight ? 'Neutral1' : 'Neutral900',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onBackground,
            text: 'On Background',
            subText: _isLight ? 'Neutral900' : 'Neutral100',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.surface,
            text: 'Surface',
            subText: _isLight ? 'Neutral1' : 'Neutral900',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onSurface,
            text: 'On Surface',
            subText: _isLight ? 'Neutral900' : 'Neutral100',
          ),
          PaletteItem(
            backgroundColor: _materialSurface.surfaceContainerHighest,
            text: 'Surface Container Lowest',
            subText: _isLight ? 'Neutral100' : 'Neutral780',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: _colorScheme.outline,
            text: 'Outline',
            subText: _isLight ? 'Neutral-Variant500' : 'Neutral-Variant400',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.outlineVariant,
            text: 'Outline Variant',
            subText: _isLight ? 'Neutral-Variant200' : 'Neutral-Variant800',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.surfaceVariant,
            text: 'Surface Variant',
            subText: _isLight ? 'Neutral-Variant100' : 'Neutral-Variant700',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onSurfaceVariant,
            text: 'On Surface Variant',
            subText: _isLight ? 'Neutral-Variant700' : 'Neutral-Variant200',
          ),
          PaletteItem(
            backgroundColor: _materialSurface.surfaceBright,
            text: 'Surface Bright',
            subText: _isLight ? 'Neutral20' : 'Neutral760',
          ),
        ],
        [
          PaletteItem(
            backgroundColor: _colorScheme.surfaceTint,
            text: 'Surface Tint',
            subText: _isLight ? 'Primary600' : 'Primary200',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.inversePrimary,
            text: 'Inverse Primary',
            subText: _isLight ? 'Primary200' : 'Primary600',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.inverseSurface,
            text: 'Inverse Surface',
            subText: _isLight ? 'Neutral800' : 'Neutral100',
          ),
          PaletteItem(
            backgroundColor: _colorScheme.onInverseSurface,
            text: 'On Inverse Surface',
            subText: _isLight ? 'Neutral50' : 'Neutral800',
          ),
          PaletteItem(
            backgroundColor: _materialSurface.surfaceDim,
            text: 'Surface Dim',
            subText: _isLight ? 'Neutral130' : 'Neutral940',
          ),
        ],
      ];

  bool get _isLight => brightness == Brightness.light;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: _palettes
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
                              item: entry.value,
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
