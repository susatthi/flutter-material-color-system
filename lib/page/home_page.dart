import 'package:flutter/material.dart';

import '../theme.dart';
import 'component/color_schemes.dart';
import 'component/panel.dart';
import 'component/tonal_palettes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MD3 Color System'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            _TonalPalettesPanel(),
            Divider(),
            _LightPanel(),
            Divider(),
            _DarkPanel(),
          ],
        ),
      ),
    );
  }
}

class _TonalPalettesPanel extends StatelessWidget {
  const _TonalPalettesPanel();

  @override
  Widget build(BuildContext context) {
    return const Panel(
      title: 'Tonal Palettes',
      child: TonalPalettes(),
    );
  }
}

class _LightPanel extends StatelessWidget {
  const _LightPanel();

  @override
  Widget build(BuildContext context) {
    return Panel(
      title: 'Light',
      child: ColorSchemes(
        brightness: Brightness.light,
        colorScheme: lightColorScheme,
      ),
    );
  }
}

class _DarkPanel extends StatelessWidget {
  const _DarkPanel();

  @override
  Widget build(BuildContext context) {
    return Panel(
      title: 'Dark',
      child: ColorSchemes(
        brightness: Brightness.dark,
        colorScheme: darkColorScheme,
      ),
    );
  }
}
