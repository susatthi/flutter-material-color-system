import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'page/home_page.dart';
import 'theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Material Color System',
      theme: theme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
