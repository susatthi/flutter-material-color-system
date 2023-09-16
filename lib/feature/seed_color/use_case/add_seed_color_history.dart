import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/ui/component/material.dart';
import '../entity/seed_color_history.dart';
import '../entity/seed_color_history_collection.dart';
import '../state/current_seed_color_history_collection.dart';

part 'add_seed_color_history.g.dart';

@riverpod
class AddSeedColorHistoryUseCase extends _$AddSeedColorHistoryUseCase {
  @override
  FutureOr<void> build() {
    return null;
  }

  Future<void> invoke({
    required Color color,
  }) async {
    if (state.isLoading) {
      return;
    }

    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final collection = ref.read(currentSeedColorHistoryCollectionProvider);
      final histories = [
        SeedColorHistory(
          hex: color.toHexString(),
          name: '#${color.toHexString()}',
        ),
        ...collection.histories,
      ];
      if (histories.length > 10) {
        histories.removeLast();
      }

      await ref.read(seedColorHistoryCollectionBoxProvider).put(
            SeedColorHistoryCollection.keyName,
            SeedColorHistoryCollection(
              histories: histories,
            ),
          );
    });
  }
}
