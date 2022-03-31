import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'config/device_preview_config.dart';
import 'config/easy_localization_config.dart';
import 'config/material_app_config/material_app_config.view.dart';
import 'config/screen_util_init_config.dart';
import 'config/variable_config.dart';

void main() async {
  FlavorConfig(
    name: VariableConfig.releaseName,
    color: Colors.blue,
    location: BannerLocation.bottomStart,
    variables: VariableConfig.releaseVariables,
  );

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    devicePreviewConfig(
      builder: (context) => screenUtilInitConfig(
        builder: () => easyLocalizationConfig(
          child: const MaterialAppConfig(
          ),
        ),
      ),
    ),
  );
}
