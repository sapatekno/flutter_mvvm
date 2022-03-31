import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sapatekno_mvvm/data/local/hive/hive_box/config_hive_box.dart';
import 'package:sapatekno_mvvm/data/local/hive/hive_model/config_hive_model.dart';

import 'config/device_preview_config.dart';
import 'config/easy_localization_config.dart';
import 'config/flavor_banner_config.dart';
import 'config/material_app_config/material_app_config.view.dart';
import 'config/screen_util_init_config.dart';
import 'config/variable_config.dart';

void main() async {
  /// * Easy Localization initialization
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  /// * Hive Database initialization
  /// * Get app directory (Not working on Web)
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);

  /// * Hive Box Init & Adapter
  Hive.registerAdapter(ConfigHiveModelAdapter());
  await ConfigHiveBox().init();

  FlavorConfig(
    name: VariableConfig.developmentName,
    color: Colors.red,
    location: BannerLocation.bottomStart,
    variables: VariableConfig.developmentVariables,
  );

  runApp(
    devicePreviewConfig(
      builder: (context) => screenUtilInitConfig(
        builder: () => easyLocalizationConfig(
          child: flavorBannerConfig(
            child: const MaterialAppConfig(),
          ),
        ),
      ),
    ),
  );
}
