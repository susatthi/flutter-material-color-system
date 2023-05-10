import 'package:flutter/material.dart';

import 'util/material_x.dart';

final lightColorScheme = ColorSchemeX.fromMaterialColors(
  brightness: Brightness.light,
  primary: MaterialColorX.primary,
  secondary: MaterialColorX.secondary,
  tertiary: MaterialColorX.tertiary,
  error: MaterialColorX.error,
  neutral: MaterialColorX.neutral,
  neutralVariant: MaterialColorX.neutralVariant,
);

final darkColorScheme = ColorSchemeX.fromMaterialColors(
  brightness: Brightness.dark,
  primary: MaterialColorX.primary,
  secondary: MaterialColorX.secondary,
  tertiary: MaterialColorX.tertiary,
  error: MaterialColorX.error,
  neutral: MaterialColorX.neutral,
  neutralVariant: MaterialColorX.neutralVariant,
);
