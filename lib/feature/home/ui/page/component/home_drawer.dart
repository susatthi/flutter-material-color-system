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

class HomeDrawer extends ConsumerWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      width: 360,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _Header(),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraints.maxHeight),
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
          ),
        ],
      ),
    );
  }
}

class _Header extends ConsumerWidget {
  const _Header();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: context.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const _Logo(),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      'Material Color System',
                      style: TextStyle(
                        color: context.onPrimary,
                      ),
                    ),
                    const Gap(p8),
                    const AppVersionText(),
                  ],
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

class _Footer extends StatelessWidget {
  const _Footer();

  @override
  Widget build(BuildContext context) {
    return const CopyRightText();
  }
}
