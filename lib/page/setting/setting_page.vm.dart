import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sapatekno_mvvm/base/view_model_base.dart';
import 'package:sapatekno_mvvm/config/hive_config.dart';
import 'package:sapatekno_mvvm/data/local/hive/hive_repo/config_hive_repo.dart';

class SettingPageVM extends ViewModelBase {
  final ConfigHiveRepo _configHiveRepo = ConfigHiveRepo();
  bool isDarkMode = false;
  Box? box;

  @override
  init() async {
    super.init();
    isDarkMode = await getIsDarkMode();
    notifyListeners();
  }

  void setIsDarkMode(bool value) async {
    print('before $isDarkMode');
    isDarkMode = await _configHiveRepo.setIsDarkMode(value);
    print('after $isDarkMode');
    notifyListeners();
  }

  ValueListenable<Box> listenConfigBox() => HiveConfig.listenConfigBox();

  Future<bool> getIsDarkMode() => _configHiveRepo.getIsDarkMode();
}
