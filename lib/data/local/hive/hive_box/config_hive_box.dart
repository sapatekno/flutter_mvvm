import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sapatekno_mvvm/data/local/hive/hive_model/config_hive_model.dart';

class ConfigHiveBox {
  static const boxName = 'config';

  Future<Box> init() => Hive.openBox<ConfigHiveModel>(boxName);

  static ValueListenable<Box> listenConfigBox() => Hive.box<ConfigHiveModel>(boxName).listenable();
}
