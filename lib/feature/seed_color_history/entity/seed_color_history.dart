import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive/hive.dart';

part 'seed_color_history.g.dart';

@HiveType(typeId: 1)
class SeedColorHistory extends HiveObject {
  SeedColorHistory({
    required this.hex,
    required this.name,
    required this.variantName,
  });

  @HiveField(0)
  final String hex;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final DateTime createdAt = DateTime.now();

  @HiveField(3)
  final String? variantName;

  Color get color => HexColor(hex);

  DynamicSchemeVariant get variant =>
      DynamicSchemeVariant.values
          .firstWhereOrNull((e) => e.name == variantName) ??
      DynamicSchemeVariant.rainbow;
}
