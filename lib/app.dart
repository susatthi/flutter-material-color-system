import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'core/launcher/exception/launcher_exception.dart';
import 'core/launcher/launcher.dart';
import 'core/state/current_theme_mode.dart';
import 'core/ui/component/layout.dart';
import 'core/ui/component/material.dart';
import 'core/ui/component/scaffold_messenger.dart';
import 'core/ui/component/theme.dart';
import 'feature/home/ui/page/home_page.dart';
import 'util/extensions.dart';
import 'util/logger.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      launcherProvider,
      (previous, next) {
        logger.i('Updated LaunchData: $next');
        next.whenError((error, _) {
          if (error is! LauncherException) {
            return;
          }

          // エラーの場合はSnackBar表示をする
          ref.read(scaffoldMessengerProvider.notifier).showSnackBar(
                SnackBar(
                  content: Text(
                    '${error.data.url} を開くことができませんでした',
                  ),
                  width: snackBarWidth,
                ),
              );
        });
      },
    );
    return MaterialApp(
      title: 'Material Color System',
      theme: ref.watch(themeProvider(Brightness.light)),
      darkTheme: ref.watch(themeProvider(Brightness.dark)),
      themeMode: ref.watch(currentThemeModeProvider),
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: ref.watch(scaffoldMessengerProvider),
      home: ResponsiveWrapper.builder(
        const HomePage(),
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
      ),
    );
  }
}
