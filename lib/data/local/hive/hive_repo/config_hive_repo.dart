import 'package:hive_flutter/hive_flutter.dart';
import 'package:sapatekno_mvvm/data/local/hive/hive_box/config_hive_box.dart';
import 'package:sapatekno_mvvm/data/local/hive/hive_model/config_hive_model.dart';

class ConfigHiveRepo {
  late Box _client;

  init() async => _client = await ConfigHiveBox().init();

  static ConfigHiveModel getListenableConfig(Box box) => box.get(0, defaultValue: ConfigHiveModel.defaultValue());

  Future<ConfigHiveModel> getConfig() async {
    await init();
    return _client.get(0, defaultValue: ConfigHiveModel.defaultValue());
  }

  Future<bool> getIsDarkMode() async {
    ConfigHiveModel data = await getConfig();
    return data.isDarkMode;
  }

  Future<bool> setIsDarkMode(bool value) async {
    ConfigHiveModel data = await getConfig();
    data.isDarkMode = value;
    _client.put(0, data);
    return value;
  }
}
