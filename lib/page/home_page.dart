import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme.dart';
import 'component/color_schemes.dart';
import 'component/panel.dart';
import 'component/seed_color_picker.dart';
import 'component/tonal_palettes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Color System'),
      ),
      body: Row(
        children: [
          const SingleChildScrollView(
            child: _SeedColorPickerPanel(),
          ),
          const VerticalDivider(),
          Expanded(
            child: SingleChildScrollView(
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
          ),
        ],
      ),
    );
  }
}

class _SeedColorPickerPanel extends ConsumerWidget {
  const _SeedColorPickerPanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            width: 320,
            child: SeedColorPicker(),
          ),
        ],
      ),
    );
  }
}

class _MaterialColorPalettesPanel extends ConsumerWidget {
  const _MaterialColorPalettesPanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seedColor = ref.watch(seedColorProvider);
    return Panel(
      title: 'Material Color Palettes',
      child: MaterialColorPalettes(
        seedColor: seedColor,
      ),
    );
  }
}

class _LightSchemePanel extends ConsumerWidget {
  const _LightSchemePanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seedColor = ref.watch(seedColorProvider);
    return Panel(
      title: 'Light Scheme',
      child: ColorSchemes(
        brightness: Brightness.light,
        seedColor: seedColor,
      ),
    );
  }
}

class _DarkSchemePanel extends ConsumerWidget {
  const _DarkSchemePanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seedColor = ref.watch(seedColorProvider);
    return Panel(
      title: 'Dark Scheme',
      child: ColorSchemes(
        brightness: Brightness.dark,
        seedColor: seedColor,
      ),
    );
  }
}
