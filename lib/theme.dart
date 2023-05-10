import 'package:flutter/material.dart';

import 'util/material_x.dart';

final primary = MaterialColorX(0xFF6750A4);
final secondary = MaterialColorX(0xFF958DA5);
final tertiary = MaterialColorX(0xFFB58392);
final error = MaterialColorX(0xFFBA1A1A);
final neutral = MaterialColorX(0xFF939094);
final neutralVariant = MaterialColorX(0xFF625D66);

final lightColorScheme = ColorSchemeX(
  brightness: Brightness.light,
  primary: primary,
  secondary: secondary,
  tertiary: tertiary,
  error: error,
  neutral: neutral,
  neutralVariant: neutralVariant,
);

final darkColorScheme = ColorSchemeX(
  brightness: Brightness.dark,
  primary: primary,
  secondary: secondary,
  tertiary: tertiary,
  error: error,
  neutral: neutral,
  neutralVariant: neutralVariant,
);
