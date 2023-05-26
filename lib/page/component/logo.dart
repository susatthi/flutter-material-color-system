import 'package:flutter/material.dart';

import '../../util/assets/assets.gen.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    this.size = 32,
    this.padding = const EdgeInsets.all(8),
  });

  final double size;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Assets.images.appIcon.image(
        width: size,
        height: size,
      ),
    );
  }
}
