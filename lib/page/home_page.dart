import 'package:flutter/material.dart';

import '../util/material_color_x.dart';
import 'component/tonal_palettes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tonal Palettes'),
      ),
      body: Center(
        child: Column(
          children: [
            TonalPalettes(
              title: 'Neutral',
              materialColor: MaterialColorX.neutral,
            ),
            TonalPalettes(
              title: 'Neutral Variant',
              materialColor: MaterialColorX.neutralVariant,
            ),
          ],
        ),
      ),
    );
  }
}
