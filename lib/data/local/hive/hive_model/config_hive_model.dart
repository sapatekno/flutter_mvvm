import 'package:hive_flutter/hive_flutter.dart';

part 'config_hive_model.g.dart';

@HiveType(typeId: 1)
class ConfigHiveModel {
  @HiveField(0, defaultValue: false)
  bool isDarkMode;

  ConfigHiveModel({required this.isDarkMode});

  static ConfigHiveModel defaultValue() => ConfigHiveModel(isDarkMode: false);
}
