import 'package:hive/hive.dart';

import 'seed_color_history.dart';

part 'seed_color_history_collection.g.dart';

@HiveType(typeId: 0)
class SeedColorHistoryCollection extends HiveObject {
  SeedColorHistoryCollection({
    this.histories = const [],
  });

  static const boxName = 'seedColorHistoryCollection';
  static const keyName = 'collection';

  @HiveField(0)
  final List<SeedColorHistory> histories;
}
