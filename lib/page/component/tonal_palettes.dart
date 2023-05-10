import 'package:flutter/material.dart';

const _paletteHeight = 64.0;

class TonalPalettes extends StatelessWidget {
  const TonalPalettes({
    super.key,
    required this.title,
    required this.materialColor,
    this.padding = const EdgeInsets.all(8),
  });

  final String title;
  final MaterialColor materialColor;
  final EdgeInsets padding;

  List<_PaletteItem> get _paletteItems => [
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
      padding: padding,
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
      width: 96,
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
      backgroundColor: materialColor.shade400,
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
        height: _paletteHeight,
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
