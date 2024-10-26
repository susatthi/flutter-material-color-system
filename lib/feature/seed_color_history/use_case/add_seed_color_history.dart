import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/ui/component/material.dart';
import '../../../core/use_case/use_case.dart';
import '../../color/state/current_dynamic_scheme_variant.dart';
import '../../color/state/current_seed_color.dart';
import '../entity/seed_color_history.dart';
import '../entity/seed_color_history_collection.dart';
import '../state/current_seed_color_history_collection.dart';

part 'add_seed_color_history.g.dart';

@riverpod
class AddSeedColorHistoryUseCase extends _$AddSeedColorHistoryUseCase
    with UseCase {
  @override
  FutureOr<void> build() => buildInternal(() => null);

  Future<void> invoke({
    required String name,
  }) =>
      invokeInternal(() async {
        final collection =
            ref.read(currentSeedColorHistoryCollectionProvider).requireValue;
        final seedColor = ref.read(currentSeedColorNotifierProvider);
        final variant = ref.read(currentDynamicSchemeVariantNotifierProvider);
        final histories = [
          SeedColorHistory(
            hex: seedColor.toHexString(),
            name: name,
            variantName: variant.name,
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
