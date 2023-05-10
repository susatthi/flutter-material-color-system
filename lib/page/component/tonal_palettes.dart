import 'package:flutter/material.dart';

import '../../util/material_x.dart';
import 'layout.dart';

class TonalPalettes extends StatelessWidget {
  const TonalPalettes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TonalPalette(
          title: 'Primary',
          materialColor: MaterialColorX.primary,
        ),
        _TonalPalette(
          title: 'Secondary',
          materialColor: MaterialColorX.secondary,
        ),
        _TonalPalette(
          title: 'Tertiary',
          materialColor: MaterialColorX.tertiary,
        ),
        _TonalPalette(
          title: 'Error',
          materialColor: MaterialColorX.error,
        ),
        _TonalPalette(
          title: 'Neutral',
          materialColor: MaterialColorX.neutral,
        ),
        _TonalPalette(
          title: 'Neutral Variant',
          materialColor: MaterialColorX.neutralVariant,
        ),
      ],
    );
  }
}

class _TonalPalette extends StatelessWidget {
  const _TonalPalette({
    required this.title,
    required this.materialColor,
  });

  final String title;
  final MaterialColor materialColor;

  List<_PaletteItem> get _paletteItems => [
        _PaletteItem(
          backgroundColor: materialColor.shade1,
          text: '1',
        ),
        _PaletteItem(
          backgroundColor: materialColor.shade50,
          text: '50',
        ),
        _PaletteItem(
          backgroundColor: materialColor.shade100,
          text: '100',
        ),
        _PaletteItem(
          backgroundColor: materialColor.shade200,
          text: '200',
        ),
        _PaletteItem(
          backgroundColor: materialColor.shade300,
          text: '300',
        ),
        _PaletteItem(
          backgroundColor: materialColor.shade400,
          text: '400',
        ),
        _PaletteItem(
          backgroundColor: materialColor.shade500,
          text: '500',
        ),
        _PaletteItem(
          backgroundColor: materialColor.shade600,
          text: '600',
        ),
        _PaletteItem(
          backgroundColor: materialColor.shade700,
          text: '700',
        ),
        _PaletteItem(
          backgroundColor: materialColor.shade800,
          text: '800',
        ),
        _PaletteItem(
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
              child: _Palette(item: e),
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
    return ColoredBox(
      color: item.backgroundColor,
      child: SizedBox(
        height: paletteHeight,
        child: Center(
          child: Text(
            item.text,
            style: TextStyle(
              color: textColor,
            ),
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
  });

  final Color backgroundColor;
  final String text;
}
