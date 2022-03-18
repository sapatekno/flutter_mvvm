import 'package:flutter_flavor/flutter_flavor.dart';

import '../configs/variable_config.dart';

class AppUtils {
  /// * this function will return true if mode is Development
  static bool isDevelopment() => FlavorConfig.instance.variables['buildMode'] == BuildMode.development;
}
