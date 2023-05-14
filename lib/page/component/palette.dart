import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../state/current_hover_color.dart';
import '../../state/current_theme_mode.dart';
import '../../util/extention.dart';
import 'layout.dart';
import 'snack_bar.dart';

class Palette extends ConsumerStatefulWidget {
  const Palette({
    super.key,
    required this.item,
    this.padding = const EdgeInsets.all(commonPadding),
  });

  final PaletteItem item;
  final EdgeInsets padding;

  @override
  ConsumerState<Palette> createState() => _PaletteState();
}

class _PaletteState extends ConsumerState<Palette> {
  bool isHover = false;

  Color get textColor => widget.item.backgroundColor.computeLuminance() < 0.5
      ? Colors.white
      : Colors.black;

  Color get lightBorderColor =>
      widget.item.backgroundColor.computeLuminance() < 0.5
          ? Theme.of(context).colorScheme.primaryContainer
          : Theme.of(context).colorScheme.primary;

  Color get darkBorderColor =>
      widget.item.backgroundColor.computeLuminance() < 0.5
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.primaryContainer;

  TextStyle get textStyle => TextStyle(
        color: textColor,
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 10,
          valueWhen: [
            const Condition.largerThan(
              name: MOBILE,
              value: 12,
            )
          ],
        ).value,
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
    ref.listen(currentHoverColorProvider, (previous, next) {
      if (widget.item.backgroundColor != next) {
        setState(() {
          isHover = false;
        });
      }
    });

    if (widget.item.backgroundColor == Colors.transparent) {
      return const SizedBox(
        height: paletteHeight,
      );
    }

    final currentThemeMode = ref.watch(currentThemeModeProvider);
    final isLight = currentThemeMode == ThemeMode.light;
    final currentHoverColor = ref.watch(currentHoverColorProvider);
    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;

          final notifier = ref.read(currentHoverColorProvider.notifier);
          if (isHover) {
            notifier.update(widget.item.backgroundColor);
          } else {
            notifier.clear();
          }
        });
      },
      onTap: () {
        setState(() {
          isHover = !isHover;

          final notifier = ref.read(currentHoverColorProvider.notifier);
          if (isHover) {
            notifier.update(widget.item.backgroundColor);
          } else {
            notifier.clear();
          }
        });
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: widget.item.backgroundColor,
          border: currentHoverColor == widget.item.backgroundColor
              ? Border.all(
                  color: isLight ? lightBorderColor : darkBorderColor,
                  width: 3,
                )
              : null,
        ),
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

class _CopyButton extends ConsumerStatefulWidget {
  const _CopyButton({
    required this.backgroundColor,
    required this.iconColor,
  });

  final Color backgroundColor;
  final Color iconColor;

  @override
  ConsumerState<_CopyButton> createState() => _CopyButtonState();
}

class _CopyButtonState extends ConsumerState<_CopyButton> {
  bool copied = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Clipboard.setData(
          ClipboardData(text: widget.backgroundColor.toHexString()),
        );

        // スナックバーを表示する
        final messengerState =
            ref.read(scaffoldMessengerKeyProvider).currentState;
        messengerState?.clearSnackBars();
        messengerState?.showSnackBar(
          SnackBar(
            content: Text(widget.backgroundColor.toHexString()),
            width: snackBarWidth,
          ),
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
