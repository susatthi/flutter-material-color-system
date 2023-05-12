import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/current_seed_color.dart';
import '../state/current_theme_mode.dart';
import 'component/color_schemes.dart';
import 'component/github.dart';
import 'component/layout.dart';
import 'component/panel.dart';
import 'component/responsive.dart';
import 'component/seed_color.dart';
import 'component/theme_mode.dart';
import 'component/tonal_palettes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Scaffold(
        appBar: AppBar(
          title: const _Title(),
          actions: const [
            SeedColorButton(),
            GitHubButton(),
            ToggleThemeModeButton(),
          ],
        ),
        body: const _MobileBody(),
      ),
      desktop: Scaffold(
        appBar: AppBar(
          title: const _Title(),
          actions: const [
            GitHubButton(),
            ToggleThemeModeButton(),
          ],
        ),
        body: const _DesktopBody(),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return const Text('Material Color System');
  }
}

class _MobileBody extends StatelessWidget {
  const _MobileBody();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          _ColorPalettesPanel(),
          Divider(indent: commonPadding, endIndent: commonPadding),
          _ColorSchemesPanel(),
        ],
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody();

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(commonPadding),
            child: SizedBox(
              width: pickerPanelWidth,
              child: SeedColorPicker(),
            ),
          ),
        ),
        VerticalDivider(
          indent: commonPadding,
          endIndent: commonPadding,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _ColorPalettesPanel(),
                Divider(endIndent: commonPadding),
                _ColorSchemesPanel(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ColorPalettesPanel extends ConsumerWidget {
  const _ColorPalettesPanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seedColor = ref.watch(currentSeedColorProvider);
    return Panel(
      title: 'Color Palettes',
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
