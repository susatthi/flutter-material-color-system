import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// レスポンシブ
class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  @override
  Widget build(BuildContext context) {
    return ResponsiveValue<Widget>(
      context,
      defaultValue: mobile,
      valueWhen: [
        if (tablet != null)
          Condition.largerThan(
            name: MOBILE,
            value: tablet,
          ),
        if (desktop != null)
          Condition.largerThan(
            name: TABLET,
            value: desktop,
          ),
      ],
    ).value!;
  }
}
