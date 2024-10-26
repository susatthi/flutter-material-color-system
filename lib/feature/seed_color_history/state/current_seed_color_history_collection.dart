import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/seed_color_history_collection.dart';

part 'current_seed_color_history_collection.g.dart';

@riverpod
Box<SeedColorHistoryCollection> seedColorHistoryCollectionBox(Ref ref) {
  throw UnimplementedError();
}

@riverpod
Stream<SeedColorHistoryCollection> currentSeedColorHistoryCollection(Ref ref) {
  final box = ref.watch(seedColorHistoryCollectionBoxProvider);
  return box.watch(key: SeedColorHistoryCollection.keyName).map(
        (event) =>
            event.value as SeedColorHistoryCollection? ??
            SeedColorHistoryCollection(),
      );
}
