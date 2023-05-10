import 'package:flutter/material.dart';

import 'layout.dart';

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

  List<List<_PaletteItem>> get _palettes => [
        [
          _PaletteItem(
            backgroundColor: colorScheme.primary,
            text: 'Primary',
            subText: _isDark ? 'Primary200' : 'Primary600',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onPrimary,
            text: 'On Primary',
            subText: _isDark ? 'Primary800' : 'White',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.primaryContainer,
            text: 'Primary Container',
            subText: _isDark ? 'Primary700' : 'Primary100',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onPrimaryContainer,
            text: 'On Primary Container',
            subText: _isDark ? 'Primary100' : 'Primary900',
          ),
        ],
        [
          _PaletteItem(
            backgroundColor: colorScheme.secondary,
            text: 'Secondary',
            subText: _isDark ? 'Secondary200' : 'Secondary600',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onSecondary,
            text: 'On Secondary',
            subText: _isDark ? 'Secondary800' : 'White',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.secondaryContainer,
            text: 'Secondary Container',
            subText: _isDark ? 'Secondary700' : 'Secondary100',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onSecondaryContainer,
            text: 'On Secondary Container',
            subText: _isDark ? 'Secondary100' : 'Secondary900',
          ),
        ],
        [
          _PaletteItem(
            backgroundColor: colorScheme.tertiary,
            text: 'Tertiary',
            subText: _isDark ? 'Tertiary200' : 'Tertiary600',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onTertiary,
            text: 'On Tertiary',
            subText: _isDark ? 'Tertiary800' : 'White',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.tertiaryContainer,
            text: 'Tertiary Container',
            subText: _isDark ? 'Tertiary700' : 'Tertiary100',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onTertiaryContainer,
            text: 'On Tertiary Container',
            subText: _isDark ? 'Tertiary100' : 'Tertiary900',
          ),
        ],
        [
          _PaletteItem(
            backgroundColor: colorScheme.error,
            text: 'Error',
            subText: _isDark ? 'Error200' : 'Error600',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onError,
            text: 'On Error',
            subText: _isDark ? 'Error800' : 'White',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.errorContainer,
            text: 'Error Container',
            subText: _isDark ? 'Error700' : 'Error100',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onErrorContainer,
            text: 'On Error Container',
            subText: _isDark ? 'Error100' : 'Error900',
          ),
        ],
        [
          _PaletteItem(
            backgroundColor: colorScheme.background,
            text: 'Background',
            subText: _isDark ? 'Neutral900' : 'Neutral1',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onBackground,
            text: 'On Background',
            subText: _isDark ? 'Neutral100' : 'Neutral900',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.surface,
            text: 'Surface',
            subText: _isDark ? 'Neutral900' : 'Neutral1',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onSurface,
            text: 'On Surface',
            subText: _isDark ? 'Neutral200' : 'Neutral900',
          ),
        ],
        [
          _PaletteItem(
            backgroundColor: colorScheme.surfaceVariant,
            text: 'Surface Variant',
            subText: _isDark ? 'Neutral-Variant1700' : 'Neutral-Variant100',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onSurfaceVariant,
            text: 'On Surface Variant',
            subText: _isDark ? 'Neutral-Variant200' : 'Neutral-Variant700',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.outline,
            text: 'Outline',
            subText: _isDark ? 'Neutral-Variant400' : 'Neutral-Variant500',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.outlineVariant,
            text: 'Outline Variant',
            subText: _isDark ? 'Neutral-Variant800' : 'Neutral-Variant200',
          ),
        ],
        [
          _PaletteItem(
            backgroundColor: colorScheme.inverseSurface,
            text: 'Inverse Surface',
            subText: _isDark ? 'Neutral200' : 'Neutral800',
          ),
          _PaletteItem(
            backgroundColor: colorScheme.onInverseSurface,
            text: 'On Inverse Surface',
            subText: _isDark ? 'Neutral900' : 'Neutral50',
          ),
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
                      .map((item) => Expanded(child: _Palette(item: item)))
                      .toList(),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Palette extends StatelessWidget {
  const _Palette({
    required this.item,
  });

  final _PaletteItem item;

  Color get textColor => item.backgroundColor.computeLuminance() < 0.5
      ? Colors.white
      : Colors.black;

  @override
  Widget build(BuildContext context) {
    final effectiveTextStyle = TextStyle(
      color: textColor,
      fontSize: 12,
    );

    return ColoredBox(
      color: item.backgroundColor,
      child: SizedBox(
        height: paletteHeight,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  item.text,
                  style: effectiveTextStyle,
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  item.subText,
                  style: effectiveTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PaletteItem {
  const _PaletteItem({
    required this.backgroundColor,
    required this.text,
    required this.subText,
  });

  final Color backgroundColor;
  final String text;
  final String subText;
}
