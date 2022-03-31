// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConfigHiveModelAdapter extends TypeAdapter<ConfigHiveModel> {
  @override
  final int typeId = 1;

  @override
  ConfigHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ConfigHiveModel(
      isDarkMode: fields[0] == null ? false : fields[0] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ConfigHiveModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.isDarkMode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConfigHiveModelAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
