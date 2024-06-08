import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/seed_color_history.dart';
import '../entity/seed_color_history_collection.dart';
import '../state/current_seed_color_history_collection.dart';

part 'delete_seed_color_history.g.dart';

@riverpod
class DeleteSeedColorHistoryUseCase extends _$DeleteSeedColorHistoryUseCase {
  @override
  FutureOr<void> build() {
    return null;
  }

  Future<void> invoke({
    required SeedColorHistory history,
  }) async {
    if (state.isLoading) {
      return;
    }

    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final histories =
          ref.read(currentSeedColorHistoryCollectionProvider).histories;
      histories.remove(history);

      await ref.read(seedColorHistoryCollectionBoxProvider).put(
            SeedColorHistoryCollection.keyName,
            SeedColorHistoryCollection(
              histories: histories,
            ),
          );
    });
  }
}
