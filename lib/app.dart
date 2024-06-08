import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'core/state/current_theme_mode.dart';
import 'core/ui/component/material.dart';
import 'core/ui/component/messenger.dart';
import 'core/ui/component/theme.dart';
import 'feature/home/ui/page/home_page.dart';
import 'feature/launcher/component/widget_ref_x.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Material Color System',
      theme: ref.watch(themeProvider(Brightness.light)),
      darkTheme: ref.watch(themeProvider(Brightness.dark)),
      themeMode: ref.watch(currentThemeModeProvider),
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
      home: const _App(
        child: HomePage(),
      ),
    );
  }
}

class _App extends ConsumerStatefulWidget {
  const _App({
    required this.child,
  });

  final Widget? child;

  @override
  ConsumerState<_App> createState() => _AppState();
}

class _AppState extends ConsumerState<_App> {
  @override
  Widget build(BuildContext context) {
    // Launcherを監視する
    ref.listenLauncher();

    return ResponsiveWrapper.builder(
      Navigator(
        key: ref.watch(navigatorKeyProvider),
        onPopPage: (route, dynamic _) => false,
        pages: [
          MaterialPage<Widget>(
            child: widget.child!,
          ),
        ],
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
            color: context.background,
          );
        },
      ),
    );
  }
}
