import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'config/device_preview_config.dart';
import 'config/easy_localization_config.dart';
import 'config/flavor_banner_config.dart';
import 'config/material_app_config.dart';
import 'config/screen_util_init_config.dart';
import 'config/variable_config.dart';
import 'page/sample/sample_page.view.dart';

void main() async {
  FlavorConfig(
    name: VariableConfig.developmentName,
    color: Colors.red,
    location: BannerLocation.bottomStart,
    variables: VariableConfig.developmentVariables,
  );

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    devicePreviewConfig(
      builder: (context) => screenUtilInitConfig(
        builder: () => easyLocalizationConfig(
          child: flavorBannerConfig(
            child: const MaterialAppConfig(
              home: SamplePage(),
            ),
          ),
        ),
      ),
    ),
  );
}
