import 'package:flutter/material.dart';

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
          children: const [
            TonalPalettes(
              title: 'Blue',
              materialColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
