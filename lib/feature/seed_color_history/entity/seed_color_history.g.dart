// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seed_color_history.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SeedColorHistoryAdapter extends TypeAdapter<SeedColorHistory> {
  @override
  final int typeId = 1;

  @override
  SeedColorHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SeedColorHistory(
      hex: fields[0] as String,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SeedColorHistory obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.hex)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeedColorHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
