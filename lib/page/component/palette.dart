import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../util/extention.dart';
import 'layout.dart';

class Palette extends StatefulWidget {
  const Palette({
    super.key,
    required this.item,
    this.padding = const EdgeInsets.all(8),
  });

  final PaletteItem item;
  final EdgeInsets padding;

  @override
  State<Palette> createState() => _PaletteState();
}

class _PaletteState extends State<Palette> {
  bool isHover = false;

  Color get textColor => widget.item.backgroundColor.computeLuminance() < 0.5
      ? Colors.white
      : Colors.black;

  TextStyle get textStyle => TextStyle(
        color: textColor,
        fontSize: 12,
      );

  Widget get foreground {
    final text = widget.item.text;
    if (text == null) {
      return const SizedBox();
    }

    final subText = widget.item.subText;
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
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHover = false;
        });
      },
      child: ColoredBox(
        color: widget.item.backgroundColor,
        child: SizedBox(
          height: paletteHeight,
          child: Padding(
            padding: widget.padding,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                foreground,
                if (isHover)
                  _CopyButton(
                    backgroundColor: widget.item.backgroundColor,
                    iconColor: textColor,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CopyButton extends StatefulWidget {
  const _CopyButton({
    required this.backgroundColor,
    required this.iconColor,
  });

  final Color backgroundColor;
  final Color iconColor;

  @override
  State<_CopyButton> createState() => _CopyButtonState();
}

class _CopyButtonState extends State<_CopyButton> {
  bool copied = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Clipboard.setData(
          ClipboardData(text: widget.backgroundColor.toHexString()),
        );
        setState(() {
          copied = true;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Icon(
          copied ? Icons.check : Icons.copy,
          color: widget.iconColor,
          size: 18,
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
