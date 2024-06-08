import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';

import '../../../../core/ui/component/layout.dart';
import '../../../app/ui/component/app_version.dart';
import '../../../color/ui/component/color_schemes.dart';
import '../../../color/ui/component/tonal_palette.dart';
import '../../../theme_mode/state/current_brightness.dart';
import '../../../theme_mode/ui/component/toggle_theme_mode_button.dart';
import 'component/copy_right.dart';
import 'component/home_panel.dart';
import 'component/home_title.dart';
import 'component/launch_github_button.dart';
import 'component/seed_color.dart';

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
    return LayoutBuilder(
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
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        CopyRightText(),
                        Positioned(
                          right: 0,
                          child: AppVersionText(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
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
