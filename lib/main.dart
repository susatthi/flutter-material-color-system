import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'core/data/package_info/package_info.dart';
import 'core/data/shared_preferences/shared_preferences.dart';
import 'feature/seed_color/entity/seed_color_history.dart';
import 'feature/seed_color/entity/seed_color_history_collection.dart';
import 'feature/seed_color/state/current_seed_color_history_collection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  final prefs = await SharedPreferences.getInstance();

  await Hive.initFlutter();
  Hive.registerAdapter(SeedColorHistoryCollectionAdapter());
  Hive.registerAdapter(SeedColorHistoryAdapter());
  final seedColorHistoryCollectionBox =
      await Hive.openBox<SeedColorHistoryCollection>(
    SeedColorHistoryCollection.boxName,
  );
  final packageInfo = await PackageInfo.fromPlatform();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
        packageInfoProvider.overrideWithValue(packageInfo),
        seedColorHistoryCollectionBoxProvider
            .overrideWithValue(seedColorHistoryCollectionBox),
      ],
      child: const App(),
    ),
  );
}
