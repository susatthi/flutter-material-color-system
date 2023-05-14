import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

import '../../util/extention.dart';
import 'layout.dart';
import 'palette.dart';
import 'responsive.dart';

class MaterialColorPalettes extends StatelessWidget {
  const MaterialColorPalettes({
    super.key,
    required this.seedColor,
    this.padding = const EdgeInsets.all(commonPadding),
  });

  final Color seedColor;
  final EdgeInsets padding;

  CorePalette get _palette => CorePalette.of(seedColor.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
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
      ),
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
    return Responsive(
      mobile: _MobilePaletteRow(
        title: title,
        materialColor: materialColor,
        paletteItems: _paletteItems,
      ),
      tablet: _TabletPaletteRow(
        title: title,
        materialColor: materialColor,
        paletteItems: _paletteItems,
      ),
    );
  }
}

class _MobilePaletteRow extends StatelessWidget {
  const _MobilePaletteRow({
    required this.title,
    required this.materialColor,
    required this.paletteItems,
  });

  final String title;
  final MaterialColor materialColor;
  final List<PaletteItem> paletteItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _TitleText(
            title: title,
          ),
          const SizedBox(height: commonPadding / 2),
          Row(
            children: [
              _PrimaryCircleColor(
                materialColor: materialColor,
                colorDimention: 32,
              ),
              const SizedBox(width: commonPadding),
              ...paletteItems.map(
                (e) => Expanded(
                  child: Palette(item: e),
                ),
              ),
            ],
          ),
          const SizedBox(height: commonPadding),
        ],
      ),
    );
  }
}

class _TabletPaletteRow extends StatelessWidget {
  const _TabletPaletteRow({
    required this.title,
    required this.materialColor,
    required this.paletteItems,
  });

  final String title;
  final MaterialColor materialColor;
  final List<PaletteItem> paletteItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
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
          ...paletteItems.map(
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
      width: 120,
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
    this.colorDimention = 42,
  });

  final MaterialColor materialColor;
  final double colorDimention;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: colorDimention,
      child: CircleAvatar(
        backgroundColor: materialColor.shade600,
      ),
    );
  }
}
