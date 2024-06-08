import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/seed_color_history_collection.dart';

part 'current_seed_color_history_collection.g.dart';

@riverpod
Box<SeedColorHistoryCollection> seedColorHistoryCollectionBox(
  SeedColorHistoryCollectionBoxRef ref,
) {
  throw UnimplementedError();
}

@riverpod
SeedColorHistoryCollection currentSeedColorHistoryCollection(
  CurrentSeedColorHistoryCollectionRef ref,
) {
  final box = ref.watch(seedColorHistoryCollectionBoxProvider);
  box
      .watch(key: SeedColorHistoryCollection.keyName)
      .map((event) => event.value as SeedColorHistoryCollection?)
      .listen((collection) {
    ref.state = collection ?? SeedColorHistoryCollection();
  });
  return box.get(SeedColorHistoryCollection.keyName) ??
      SeedColorHistoryCollection();
}
