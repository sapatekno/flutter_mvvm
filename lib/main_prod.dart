import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:sapatekno_mvvm/configs/easy_localization_config.dart';
import 'package:sapatekno_mvvm/configs/variable_config.dart';

import 'configs/device_preview_config.dart';
import 'configs/material_app_config.dart';
import 'configs/screen_util_init_config.dart';
import 'pages/sample/sample_page.view.dart';

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
            home: SamplePage(),
          ),
        ),
      ),
    ),
  );
}
