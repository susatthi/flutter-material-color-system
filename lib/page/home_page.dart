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
            _MaterialColorPalettesPanel(),
            Divider(),
            _LightSchemePanel(),
            Divider(),
            _DarkSchemePanel(),
          ],
        ),
      ),
    );
  }
}

class _MaterialColorPalettesPanel extends StatelessWidget {
  const _MaterialColorPalettesPanel();

  @override
  Widget build(BuildContext context) {
    return const Panel(
      title: 'Material Color Palettes',
      child: MaterialColorPalettes(
        seedColor: seedColor,
      ),
    );
  }
}

class _LightSchemePanel extends StatelessWidget {
  const _LightSchemePanel();

  @override
  Widget build(BuildContext context) {
    return const Panel(
      title: 'Light Scheme',
      child: ColorSchemes(
        brightness: Brightness.light,
        seedColor: seedColor,
      ),
    );
  }
}

class _DarkSchemePanel extends StatelessWidget {
  const _DarkSchemePanel();

  @override
  Widget build(BuildContext context) {
    return const Panel(
      title: 'Dark Scheme',
      child: ColorSchemes(
        brightness: Brightness.dark,
        seedColor: seedColor,
      ),
    );
  }
}
