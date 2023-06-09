import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'page/component/material.dart';
import 'page/component/snack_bar.dart';
import 'page/home_page.dart';
import 'state/current_theme_mode.dart';
import 'state/theme.dart';

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
      home: ResponsiveWrapper.builder(
        const HomePage(),
        breakpoints: [
          const ResponsiveBreakpoint.resize(820, name: MOBILE),
          const ResponsiveBreakpoint.resize(920, name: TABLET),
          const ResponsiveBreakpoint.resize(1360, name: DESKTOP),
        ],
        minWidth: 820,
        maxWidth: 1600,
        defaultScale: true,
        background: Consumer(
          builder: (context, ref, _) {
            return Container(
              color: context.background,
            );
          },
        ),
      ),
    );
  }
}
