import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String configBox = 'config';

class HiveConfig {
  static Future<Box> openConfigBox() => Hive.openBox<bool>(configBox);

  static Box<bool> readConfigBox() => Hive.box<bool>(configBox);

  static ValueListenable<Box> listenConfigBox() => readConfigBox().listenable();
}
