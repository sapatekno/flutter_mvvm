import 'package:easy_localization/easy_localization.dart';

class VariableConfig {
  static String developmentName = 'development'.tr();
  static String releaseName = 'release'.tr();

  static const developmentVariables = {
    'appName': 'Counter Development',
    'devicePreviewEnable': true,
  };

  static const releaseVariables = {
    'appName': 'Counter Release',
    'devicePreviewEnable': false,
  };
}
