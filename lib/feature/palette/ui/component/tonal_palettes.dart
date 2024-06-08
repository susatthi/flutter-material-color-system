import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/ui/component/layout.dart';
import '../../../../../core/ui/component/material.dart';
import '../../../../../core/ui/component/responsive.dart';
import '../../../../core/ui/component/widget_ref_x.dart';
import '../../state/tonal_palette_kind.dart';
import 'palette.dart';

part 'tonal_palettes.g.dart';

@riverpod
PaletteItem _paletteItem(
  _PaletteItemRef ref, {
  required TonalPaletteKind kind,
  required TonalPaletteShade shade,
}) {
  final color = ref.watch(tonalPaletteColorProvider(kind: kind, shade: shade));
  return PaletteItem(
    backgroundColor: color,
    text: shade.title,
  );
}

class TonalPalettes extends ConsumerWidget {
  const TonalPalettes({
    super.key,
    this.padding = const EdgeInsets.all(commonPadding),
  });

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          ...TonalPaletteKind.values.map(
            (e) => _PaletteRow(
              kind: e,
            ),
          ),
        ],
      ),
    );
  }
}

class _PaletteRow extends StatelessWidget {
  const _PaletteRow({
    required this.kind,
  });

  final TonalPaletteKind kind;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: _Mobile(
        kind: kind,
      ),
      tablet: _Tablet(
        kind: kind,
      ),
      desktop: _Desktop(
        kind: kind,
      ),
    );
  }
}

class _Mobile extends ConsumerWidget {
  const _Mobile({
    required this.kind,
  });

  final TonalPaletteKind kind;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final materialColor =
        ref.watch(tonalPaletteMaterialColorProvider(kind: kind));
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _PrimaryCircleColor(
                materialColor: materialColor,
              ),
              const Gap(24),
              _TitleText(title: kind.title),
            ],
          ),
          const SizedBox(height: commonPadding),
          Column(
            children: [
              ...TonalPaletteShade.values.map(
                (e) => SizedBox(
                  height: 40,
                  child: Palette(
                    item: ref.watch(_paletteItemProvider(kind: kind, shade: e)),
                  ),
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

class _Tablet extends ConsumerWidget {
  const _Tablet({
    required this.kind,
  });

  final TonalPaletteKind kind;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final materialColor =
        ref.watch(tonalPaletteMaterialColorProvider(kind: kind));
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _PrimaryCircleColor(
                materialColor: materialColor,
              ),
              const Gap(24),
              _TitleText(title: kind.title),
            ],
          ),
          const SizedBox(height: commonPadding),
          Row(
            children: [
              ...TonalPaletteShade.values.map(
                (e) => Expanded(
                  child: Palette(
                    item: ref.watch(_paletteItemProvider(kind: kind, shade: e)),
                  ),
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

class _Desktop extends ConsumerWidget {
  const _Desktop({
    required this.kind,
  });

  final TonalPaletteKind kind;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final materialColor =
        ref.watch(tonalPaletteMaterialColorProvider(kind: kind));
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          _PrimaryCircleColor(
            materialColor: materialColor,
          ),
          const Gap(24),
          _TitleText(title: kind.title),
          const Gap(24),
          ...TonalPaletteShade.values.map(
            (e) => Expanded(
              child: Palette(
                item: ref.watch(_paletteItemProvider(kind: kind, shade: e)),
              ),
            ),
          ),
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
        style: context.titleMedium,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _PrimaryCircleColor extends ConsumerWidget {
  const _PrimaryCircleColor({
    required this.materialColor,
  });

  final MaterialColor materialColor;
  static const colorDimention = 42.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = materialColor.shade600;
    return SizedBox.square(
      dimension: colorDimention,
      child: InkWell(
        onTap: () async {
          // クリップボードにHEX文字列をコピー
          final hex = color.toHexString();
          await Clipboard.setData(ClipboardData(text: hex));

          // スナックバーを表示する
          ref.showSnakBar(
            SnackBar(
              content: Text('$hex Coppied!'),
              width: snackBarWidth,
            ),
          );
        },
        child: CircleAvatar(
          backgroundColor: color,
        ),
      ),
    );
  }
}
