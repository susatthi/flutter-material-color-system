import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../core/ui/component/layout.dart';
import '../../../../../core/ui/component/material.dart';
import '../../../../../core/ui/component/responsive.dart';
import '../../../../core/ui/component/widget_ref_x.dart';
import '../../state/tonal_palette.dart';
import 'palette.dart';

class TonalPalettes extends ConsumerWidget {
  const TonalPalettes({
    super.key,
    this.padding = const EdgeInsets.all(p8),
  });

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collections = ref.watch(tonalPaletteCollectionsProvider);
    return Padding(
      padding: padding,
      child: Column(
        children: [
          ...collections
              .map((collection) => _PaletteRow(collection: collection)),
        ],
      ),
    );
  }
}

class _PaletteRow extends StatelessWidget {
  const _PaletteRow({
    required this.collection,
  });

  final TonalPaletteCollection collection;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: _Mobile(
        collection: collection,
      ),
      tablet: _Tablet(
        collection: collection,
      ),
      desktop: _Desktop(
        collection: collection,
      ),
    );
  }
}

class _Mobile extends ConsumerWidget {
  const _Mobile({
    required this.collection,
  });

  final TonalPaletteCollection collection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _PrimaryCircleColor(
                color: collection.color,
              ),
              const Gap(24),
              _TitleText(title: collection.title),
            ],
          ),
          const Gap(p8),
          Column(
            children: [
              ...collection.items.map(
                (item) => SizedBox(
                  height: 40,
                  child: Palette(item: item.item),
                ),
              ),
            ],
          ),
          const SizedBox(height: p8),
        ],
      ),
    );
  }
}

class _Tablet extends ConsumerWidget {
  const _Tablet({
    required this.collection,
  });

  final TonalPaletteCollection collection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _PrimaryCircleColor(
                color: collection.color,
              ),
              const Gap(24),
              _TitleText(title: collection.title),
            ],
          ),
          const Gap(p8),
          Row(
            children: [
              ...collection.items.map(
                (item) => Expanded(
                  child: Palette(item: item.item),
                ),
              ),
            ],
          ),
          const SizedBox(height: p8),
        ],
      ),
    );
  }
}

class _Desktop extends ConsumerWidget {
  const _Desktop({
    required this.collection,
  });

  final TonalPaletteCollection collection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          _PrimaryCircleColor(
            color: collection.color,
          ),
          const Gap(24),
          _TitleText(title: collection.title),
          const Gap(24),
          ...collection.items.map(
            (item) => Expanded(
              child: Palette(item: item.item),
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
    required this.color,
  });

  final Color color;
  static const colorDimention = 42.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox.square(
      dimension: colorDimention,
      child: InkWell(
        onTap: () async {
          // クリップボードにHEX文字列をコピー
          final hex = color.toHexString();
          await Clipboard.setData(ClipboardData(text: hex));

          // スナックバーを表示する
          ref.showSnackBar(
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
