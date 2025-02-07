import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:recase/recase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/ui/component/material.dart';
import '../../../util/logger.dart';
import 'current_seed_color.dart';
import 'palette_item.dart';

part 'tonal_palette.freezed.dart';
part 'tonal_palette.g.dart';

@freezed
class TonalPaletteCollection with _$TonalPaletteCollection {
  const factory TonalPaletteCollection({
    required TonalPaletteKind kind,
    required List<TonalPaletteItem> items,
  }) = _TonalPaletteCollection;
  const TonalPaletteCollection._();

  Color get color => items
      .firstWhere((item) => item.shade == TonalPaletteShade.shade600)
      .item
      .backgroundColor;

  String get title => kind.title;
}

@freezed
class TonalPaletteItem with _$TonalPaletteItem {
  const factory TonalPaletteItem({
    required TonalPaletteKind kind,
    required TonalPaletteShade shade,
    required PaletteItem item,
  }) = _TonalPaletteItem;
}

enum TonalPaletteKind {
  primary,
  secondary,
  tertiary,
  error,
  neutral,
  neutralVariant,
  ;

  String get title => ReCase(name).titleCase;
}

enum TonalPaletteShade {
  shade1,
  shade50,
  shade100,
  shade200,
  shade300,
  shade400,
  shade500,
  shade600,
  shade700,
  shade800,
  shade900,
  ;

  String get title => name.replaceAll('shade', '');
}

@riverpod
List<TonalPaletteCollection> tonalPaletteCollections(
  Ref ref,
) {
  final seedColor = ref.watch(currentSeedColorNotifierProvider);
  final palette = CorePalette.of(seedColor.value);
  return TonalPaletteKind.values
      .map(
        (kind) => TonalPaletteCollection(
          kind: kind,
          items: TonalPaletteShade.values
              .map(
                (shade) => TonalPaletteItem(
                  kind: kind,
                  shade: shade,
                  item: PaletteItem(
                    backgroundColor:
                        palette.getMaterialColor(kind).getColor(shade),
                    text: shade.title,
                  ),
                ),
              )
              .toList(),
        ),
      )
      .toList();
}

extension on CorePalette {
  MaterialColor getMaterialColor(TonalPaletteKind kind) => switch (kind) {
        TonalPaletteKind.primary => primaryMaterial,
        TonalPaletteKind.secondary => secondaryMaterial,
        TonalPaletteKind.tertiary => tertiaryMaterial,
        TonalPaletteKind.error => errorMaterial,
        TonalPaletteKind.neutral => neutralMaterial,
        TonalPaletteKind.neutralVariant => neutralVariantMaterial,
      };
}

extension on MaterialColor {
  Color getColor(TonalPaletteShade shade) => switch (shade) {
        TonalPaletteShade.shade1 => shade1!,
        TonalPaletteShade.shade50 => shade50,
        TonalPaletteShade.shade100 => shade100,
        TonalPaletteShade.shade200 => shade200,
        TonalPaletteShade.shade300 => shade300,
        TonalPaletteShade.shade400 => shade400,
        TonalPaletteShade.shade500 => shade500,
        TonalPaletteShade.shade600 => shade600,
        TonalPaletteShade.shade700 => shade700,
        TonalPaletteShade.shade800 => shade800,
        TonalPaletteShade.shade900 => shade900,
      };
}

@riverpod
String? tonalPaletteTitle(
  Ref ref, {
  required Color color,
}) {
  if (color == Colors.black) {
    return 'Black';
  }
  if (color == Colors.white) {
    return 'White';
  }
  final seedColor = ref.watch(currentSeedColorNotifierProvider);
  final palette = CorePalette.of(seedColor.value);
  final materialColors = {
    'Primary': palette.primaryMaterial,
    'Secondary': palette.secondaryMaterial,
    'Tertiary': palette.tertiaryMaterial,
    'Error': palette.errorMaterial,
    'Neutral': palette.neutralMaterial,
    'NeutralVariant': palette.neutralVariantMaterial,
  };
  for (final materialColorKey in materialColors.keys) {
    final materialColor = materialColors[materialColorKey]!;
    final shades = {
      '1': materialColor.shade1,
      '50': materialColor.shade50,
      '100': materialColor.shade100,
      '200': materialColor.shade200,
      '300': materialColor.shade300,
      '400': materialColor.shade400,
      '500': materialColor.shade500,
      '600': materialColor.shade600,
      '700': materialColor.shade700,
      '800': materialColor.shade800,
      '900': materialColor.shade900,
    };
    for (final shadeKey in shades.keys) {
      final shade = shades[shadeKey]!;
      if (shade == color) {
        return '$materialColorKey$shadeKey';
      } else {
        logger.d('$color != $shade($materialColorKey$shadeKey)');
      }
    }
  }
  return null;
}
