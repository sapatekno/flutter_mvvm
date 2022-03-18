import 'package:easy_localization/easy_localization.dart';

enum BuildMode { development, production }

class VariableConfig {
  static String developmentName = 'development'.tr();
  static String releaseName = 'release'.tr();

  static const developmentVariables = {
    'buildMode': BuildMode.development,
    'appName': 'Counter Development',
    'devicePreviewEnable': true,
  };

  static const releaseVariables = {
    'buildMode': BuildMode.production,
    'appName': 'Counter Release',
    'devicePreviewEnable': false,
  };
}
