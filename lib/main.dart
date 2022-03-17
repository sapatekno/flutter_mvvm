import 'package:flutter/material.dart';
import 'package:sapatekno_mvvm/configs/material_app_config.dart';

import 'configs/device_preview_config.dart';
import 'pages/sample/sample_page.view.dart';

void main() {
  runApp(
    devicePreviewConfig(
      builder: (context) => materialAppConfig(
        home: const SamplePage(),
      ),
    ),
  );
}
