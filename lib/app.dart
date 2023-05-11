import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      home: const HomePage(),
    );
  }
}
