import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../../core/ui/component/layout.dart';
import '../../../../../core/ui/component/material.dart';
import '../../../../core/ui/component/widget_ref_x.dart';
import '../../../theme_mode/state/current_theme_mode.dart';
import '../../state/current_hover_color.dart';
import '../../state/palette_item.dart';

class Palette extends ConsumerStatefulWidget {
  const Palette({
    super.key,
    required this.item,
    this.padding = const EdgeInsets.all(p8),
  });

  final PaletteItem item;
  final EdgeInsets padding;

  @override
  ConsumerState<Palette> createState() => _PaletteState();
}

class _PaletteState extends ConsumerState<Palette> {
  bool isHover = false;

  Color get textColor =>
      widget.item.foregroundColor ??
      (widget.item.backgroundColor.computeLuminance() < 0.5
          ? Colors.white
          : Colors.black);

  Color get lightBorderColor =>
      widget.item.backgroundColor.computeLuminance() < 0.5
          ? context.primaryContainer
          : context.primary;

  Color get darkBorderColor =>
      widget.item.backgroundColor.computeLuminance() < 0.5
          ? context.primary
          : context.primaryContainer;

  TextStyle get textStyle => TextStyle(
        color: textColor,
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 10,
          valueWhen: [
            const Condition.largerThan(
              name: MOBILE,
              value: 12,
            ),
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
        Expanded(
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
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
      onTap: () async {
        // クリップボードにHEX文字列をコピー
        final hex = widget.item.backgroundColor.toHexString();
        await Clipboard.setData(ClipboardData(text: hex));

        // スナックバーを表示する
        ref.showSnackBar(
          SnackBar(
            content: Text('$hex Copied!'),
            width: snackBarWidth,
          ),
        );
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
            child: foreground,
          ),
        ),
      ),
    );
  }
}
