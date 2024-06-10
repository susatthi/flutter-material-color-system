import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';

import '../../../../core/ui/component/layout.dart';
import '../../../color/ui/component/color_scheme.dart';
import '../../../color/ui/component/tonal_palette.dart';
import '../../../seed_color_history/ui/component/popup_menu.dart';
import '../../../theme_mode/state/current_brightness.dart';
import '../../../theme_mode/ui/component/toggle_theme_mode_button.dart';
import 'component/home_drawer.dart';
import 'component/home_panel.dart';
import 'component/home_title.dart';

const homeBodyMaxWidth = 1200.0;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HomeTitle(),
        actions: const [
          ToggleThemeModeButton(),
          SeedColorHistoryPopupMenuButton(),
        ],
      ),
      body: const _Body(),
      drawer: context.isShowDrawer ? const HomeDrawer() : null,
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    if (context.isShowDrawer) {
      return const _Content();
    }

    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeDrawerContent(),
        Expanded(
          child: _Content(),
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: homeBodyMaxWidth,
          ),
          child: const Column(
            children: [
              _TonalPalettesPanel(),
              Divider(
                indent: p8,
                endIndent: p8,
              ),
              _ColorSchemesPanel(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TonalPalettesPanel extends StatelessWidget {
  const _TonalPalettesPanel();

  @override
  Widget build(BuildContext context) {
    return const HomePanel(
      title: 'Tonal Palettes',
      child: TonalPalettes(),
    );
  }
}

class _ColorSchemesPanel extends ConsumerWidget {
  const _ColorSchemesPanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ref.watch(currentBrightnessProvider);
    return HomePanel(
      title: brightness.title,
      child: const ColorSchemes(),
    );
  }
}

extension on Brightness {
  String get title => '${ReCase(name).titleCase} Color Scheme';
}

extension on BuildContext {
  bool get isShowDrawer {
    final screenWidth = MediaQuery.of(this).size.width;
    return screenWidth < (homeBodyMaxWidth + homeDrawerWidth);
  }
}
