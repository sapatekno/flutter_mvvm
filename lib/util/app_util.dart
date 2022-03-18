import 'package:flutter_flavor/flutter_flavor.dart';

import '../config/variable_config.dart';

class AppUtil {
  /// * this function will return true if mode is Development
  static bool isDevelopment() => FlavorConfig.instance.variables['buildMode'] == BuildMode.development;
}
