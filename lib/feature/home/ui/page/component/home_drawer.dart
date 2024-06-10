import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../core/ui/component/layout.dart';
import '../../../../../core/ui/component/material.dart';
import '../../../../../util/assets/assets.gen.dart';
import '../../../../app/ui/component/app_version.dart';
import '../../../../seed_color_history/ui/component/dynamic_scheme_variant.dart';
import 'copy_right.dart';
import 'launch_github_button.dart';
import 'seed_color.dart';

const homeDrawerWidth = 360.0;

class HomeDrawer extends ConsumerWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Drawer(
      width: homeDrawerWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _Header(showTitle: true),
          _Content(),
        ],
      ),
    );
  }
}

class HomeDrawerContent extends StatelessWidget {
  const HomeDrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: DrawerTheme.of(context).backgroundColor ??
          context.surfaceContainerLow,
      child: const SizedBox(
        width: homeDrawerWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Header(showTitle: false),
            _Content(),
          ],
        ),
      ),
    );
  }
}

class _Header extends ConsumerWidget {
  const _Header({
    required this.showTitle,
  });

  final bool showTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: context.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showTitle)
            Row(
              children: [
                const _Logo(),
                Expanded(
                  child: Text(
                    'Material Color System',
                    style: TextStyle(
                      color: context.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          const Spacer(),
          const LaunchGitHubButton(),
        ],
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(p8),
      child: Assets.images.appIcon.image(
        color: context.onPrimary,
        width: 28,
        height: 28,
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: const IntrinsicHeight(
                child: Column(
                  children: [
                    SeedColorPicker(),
                    Divider(
                      indent: p8,
                      endIndent: p8,
                    ),
                    DynamicSchemeVariantChips(),
                    Spacer(),
                    _Footer(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppVersionText(),
        Gap(p8),
        CopyRightText(),
      ],
    );
  }
}
