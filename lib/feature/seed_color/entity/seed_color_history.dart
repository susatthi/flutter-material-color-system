import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive/hive.dart';

part 'seed_color_history.g.dart';

@HiveType(typeId: 1)
class SeedColorHistory extends HiveObject {
  SeedColorHistory({
    required this.hex,
    required this.name,
  });

  @HiveField(0)
  final String hex;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final DateTime createdAt = DateTime.now();

  Color get color => HexColor(hex);
}
