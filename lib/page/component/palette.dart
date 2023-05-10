import 'package:flutter/material.dart';

import 'layout.dart';

class Palette extends StatelessWidget {
  const Palette({
    super.key,
    required this.item,
    this.padding = const EdgeInsets.all(8),
  });

  final PaletteItem item;
  final EdgeInsets padding;

  Color get textColor => item.backgroundColor.computeLuminance() < 0.5
      ? Colors.white
      : Colors.black;

  TextStyle get textStyle => TextStyle(
        color: textColor,
        fontSize: 12,
      );

  Widget get foreground {
    final text = item.text;
    if (text == null) {
      return const SizedBox();
    }

    final subText = item.subText;
    if (subText == null) {
      return Center(
        child: Text(
          text,
          style: textStyle,
        ),
      );
    }

    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            text,
            style: textStyle,
          ),
        ),
        const Spacer(),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            subText,
            style: textStyle,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: item.backgroundColor,
      child: SizedBox(
        height: paletteHeight,
        child: Padding(
          padding: padding,
          child: foreground,
        ),
      ),
    );
  }
}

class PaletteItem {
  const PaletteItem({
    this.backgroundColor = Colors.transparent,
    this.text,
    this.subText,
  });

  final Color backgroundColor;
  final String? text;
  final String? subText;
}
