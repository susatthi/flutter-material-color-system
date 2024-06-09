import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:recase/recase.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../../../core/ui/component/layout.dart';
import '../../../../core/ui/component/material.dart';
import '../../../color/ui/component/color_scheme.dart';
import '../../../color/ui/component/tonal_palette.dart';
import '../../../theme_mode/state/current_brightness.dart';
import '../../../theme_mode/ui/component/toggle_theme_mode_button.dart';
import 'component/home_drawer.dart';
import 'component/home_panel.dart';
import 'component/home_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HomeTitle(),
        actions: const [
          ToggleThemeModeButton(),
        ],
      ),
      body: const _Body(),
      drawer: const HomeDrawer(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper.builder(
      LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: const IntrinsicHeight(
                child: Column(
                  children: [
                    _TonalPalettesPanel(),
                    Divider(
                      indent: p8,
                      endIndent: p8,
                    ),
                    _ColorSchemesPanel(),
                    Gap(80),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      breakpoints: [
        const ResponsiveBreakpoint.resize(420, name: MOBILE),
        const ResponsiveBreakpoint.resize(600, name: TABLET),
        const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      ],
      minWidth: 420,
      maxWidth: 1200,
      defaultScale: true,
      background: Consumer(
        builder: (context, ref, _) {
          return Container(
            color: context.surface,
          );
        },
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
