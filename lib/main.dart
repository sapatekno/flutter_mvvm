import 'package:flutter/material.dart';

import 'configs/device_preview_config.dart';
import 'configs/material_app_config.dart';
import 'configs/screen_util_init_config.dart';
import 'pages/sample/sample_page.view.dart';

void main() {
  runApp(
    devicePreviewConfig(
      builder: (context) => screenUtilInitConfig(
        builder: () => materialAppConfig(
          home: const SamplePage(),
        ),
      ),
    ),
  );
}
