import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/seed_color_history_collection.dart';

part 'seed_color_history_collection.g.dart';

@riverpod
Box<SeedColorHistoryCollection> seedColorHistoryCollectionBox(Ref ref) {
  throw UnimplementedError();
}

@riverpod
class SeedColorHistoryCollectionNotifier
    extends _$SeedColorHistoryCollectionNotifier {
  @override
  SeedColorHistoryCollection build() {
    final box = ref.watch(seedColorHistoryCollectionBoxProvider);
    box
        .watch(key: SeedColorHistoryCollection.keyName)
        .map(
          (event) => event.value as SeedColorHistoryCollection?,
        )
        .listen((collection) {
      if (collection != null) {
        state = collection;
      }
    });
    return box.get(SeedColorHistoryCollection.keyName) ??
        SeedColorHistoryCollection();
  }
}
