import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'palette_item.freezed.dart';

@freezed
class PaletteItem with _$PaletteItem {
  const factory PaletteItem({
    required Color backgroundColor,
    String? text,
    String? subText,
  }) = _PaletteItem;
}
