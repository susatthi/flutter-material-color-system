import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/use_case/use_case.dart';
import '../entity/seed_color_history.dart';
import '../entity/seed_color_history_collection.dart';
import '../state/seed_color_history_collection.dart';

part 'delete_seed_color_history.g.dart';

@riverpod
class DeleteSeedColorHistoryUseCase extends _$DeleteSeedColorHistoryUseCase
    with UseCase {
  @override
  FutureOr<void> build() => buildInternal(() => null);

  Future<void> invoke({
    required SeedColorHistory history,
  }) =>
      invokeInternal(() async {
        final histories =
            ref.read(seedColorHistoryCollectionNotifierProvider).histories;
        histories.remove(history);

        await ref.read(seedColorHistoryCollectionBoxProvider).put(
              SeedColorHistoryCollection.keyName,
              SeedColorHistoryCollection(
                histories: histories,
              ),
            );
      });
}
