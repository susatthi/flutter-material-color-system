import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/current_seed_color.dart';
import '../state/current_theme_mode.dart';
import 'component/color_schemes.dart';
import 'component/github.dart';
import 'component/layout.dart';
import 'component/panel.dart';
import 'component/seed_color_picker.dart';
import 'component/theme_mode.dart';
import 'component/tonal_palettes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Color System'),
        actions: const [
          GitHubButton(),
          ToggleThemeModeButton(),
        ],
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: _SeedColorPickerPanel(),
        ),
        VerticalDivider(
          indent: 8,
          endIndent: 8,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _MaterialColorPalettesPanel(),
                Divider(endIndent: 8),
                _ColorSchemesPanel(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SeedColorPickerPanel extends ConsumerWidget {
  const _SeedColorPickerPanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: SizedBox(
        width: pickerPanelWidth,
        child: SeedColorPicker(),
      ),
    );
  }
}

class _MaterialColorPalettesPanel extends ConsumerWidget {
  const _MaterialColorPalettesPanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seedColor = ref.watch(currentSeedColorProvider);
    return Panel(
      title: 'Material Color Palettes',
      child: MaterialColorPalettes(
        seedColor: seedColor,
      ),
    );
  }
}

class _ColorSchemesPanel extends ConsumerWidget {
  const _ColorSchemesPanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seedColor = ref.watch(currentSeedColorProvider);
    final themeMode = ref.watch(currentThemeModeProvider);
    final isLight = themeMode == ThemeMode.light;
    return Panel(
      title: isLight ? 'Light Scheme' : 'Dark Scheme',
      child: ColorSchemes(
        brightness: isLight ? Brightness.light : Brightness.dark,
        seedColor: seedColor,
      ),
    );
  }
}
