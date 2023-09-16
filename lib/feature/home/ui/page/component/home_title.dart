import 'package:flutter/material.dart';

import '../../../../../util/assets/assets.gen.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Logo(),
        Text('Material Color System'),
      ],
    );
  }
}

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
