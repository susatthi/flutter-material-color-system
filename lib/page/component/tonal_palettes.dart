import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

import '../../util/material_x.dart';
import 'palette.dart';

class MaterialColorPalettes extends StatelessWidget {
  const MaterialColorPalettes({
    super.key,
    required this.seedColor,
  });

  final Color seedColor;

  CorePalette get _palette => CorePalette.of(seedColor.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _PaletteRow(
          title: 'Primary',
          materialColor: _palette.materialPrimary,
        ),
        _PaletteRow(
          title: 'Secondary',
          materialColor: _palette.materialSecondary,
        ),
        _PaletteRow(
          title: 'Tertiary',
          materialColor: _palette.materialTertiary,
        ),
        _PaletteRow(
          title: 'Error',
          materialColor: _palette.materialError,
        ),
        _PaletteRow(
          title: 'Neutral',
          materialColor: _palette.materialNeutral,
        ),
        _PaletteRow(
          title: 'Neutral Variant',
          materialColor: _palette.materialNeutralVariant,
        ),
      ],
    );
  }
}

class _PaletteRow extends StatelessWidget {
  const _PaletteRow({
    required this.title,
    required this.materialColor,
  });

  final String title;
  final MaterialColor materialColor;

  List<PaletteItem> get _paletteItems => [
        PaletteItem(
          backgroundColor: materialColor.shade1!,
          text: '1',
        ),
        PaletteItem(
          backgroundColor: materialColor.shade50,
          text: '50',
        ),
        PaletteItem(
          backgroundColor: materialColor.shade100,
          text: '100',
        ),
        PaletteItem(
          backgroundColor: materialColor.shade200,
          text: '200',
        ),
        PaletteItem(
          backgroundColor: materialColor.shade300,
          text: '300',
        ),
        PaletteItem(
          backgroundColor: materialColor.shade400,
          text: '400',
        ),
        PaletteItem(
          backgroundColor: materialColor.shade500,
          text: '500',
        ),
        PaletteItem(
          backgroundColor: materialColor.shade600,
          text: '600',
        ),
        PaletteItem(
          backgroundColor: materialColor.shade700,
          text: '700',
        ),
        PaletteItem(
          backgroundColor: materialColor.shade800,
          text: '800',
        ),
        PaletteItem(
          backgroundColor: materialColor.shade900,
          text: '900',
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          _TitleText(
            title: title,
          ),
          const SizedBox(width: 24),
          _PrimaryCircleColor(
            materialColor: materialColor,
          ),
          const SizedBox(width: 24),
          ..._paletteItems.map(
            (e) => Expanded(
              child: Palette(item: e),
            ),
          )
        ],
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _PrimaryCircleColor extends StatelessWidget {
  const _PrimaryCircleColor({
    required this.materialColor,
  });

  final MaterialColor materialColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: materialColor.shade600,
    );
  }
}
