import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/state/current_seed_color.dart';
import '../../../../core/state/current_theme_mode.dart';
import '../../../../core/ui/component/layout.dart';
import '../../../palette/ui/component/color_schemes.dart';
import '../../../palette/ui/component/tonal_palettes.dart';
import '../../../seed_color/ui/component/seed_color.dart';
import 'component/home_panel.dart';
import 'component/home_title.dart';
import 'component/launch_github_button.dart';
import 'component/toggle_theme_mode_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HomeTitle(),
        actions: const [
          ShowSeedColorPickerDialogButton(),
          LaunchGitHubButton(),
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
    return const SingleChildScrollView(
      child: Column(
        children: [
          _TonalPalettesPanel(),
          Divider(
            indent: commonPadding,
            endIndent: commonPadding,
          ),
          _ColorSchemesPanel(),
        ],
      ),
    );
  }
}

class _TonalPalettesPanel extends ConsumerWidget {
  const _TonalPalettesPanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seedColor = ref.watch(currentSeedColorProvider);
    return HomePanel(
      title: 'Tonal Palettes',
      child: TonalPalettes(
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
    return HomePanel(
      title: isLight ? 'Light Color Scheme' : 'Dark Color Scheme',
      child: ColorSchemes(
        brightness: isLight ? Brightness.light : Brightness.dark,
        seedColor: seedColor,
      ),
    );
  }
}
