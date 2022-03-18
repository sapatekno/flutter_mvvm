import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

DevicePreview devicePreviewConfig({required WidgetBuilder builder}) {
  return DevicePreview(
    enabled: FlavorConfig.instance.variables['devicePreviewEnable'],
    availableLocales: const [
      Locale('en', 'US'),
      Locale('id', 'ID'),
    ],
    data: const DevicePreviewData(
      isEnabled: false,
    ),
    builder: builder,
  );
}
