// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seed_color_history_collection.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SeedColorHistoryCollectionAdapter
    extends TypeAdapter<SeedColorHistoryCollection> {
  @override
  final int typeId = 0;

  @override
  SeedColorHistoryCollection read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SeedColorHistoryCollection(
      histories: (fields[0] as List).cast<SeedColorHistory>(),
    );
  }

  @override
  void write(BinaryWriter writer, SeedColorHistoryCollection obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.histories);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeedColorHistoryCollectionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
