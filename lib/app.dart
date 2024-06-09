import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/ui/component/messenger.dart';
import 'feature/app/ui/component/theme.dart';
import 'feature/home/ui/page/home_page.dart';
import 'feature/launcher/component/widget_ref_x.dart';
import 'feature/theme_mode/state/current_theme_mode.dart';

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

    return Navigator(
      key: ref.watch(navigatorKeyProvider),
      onPopPage: (route, dynamic _) => false,
      pages: [
        MaterialPage<Widget>(
          child: widget.child!,
        ),
      ],
    );
  }
}
