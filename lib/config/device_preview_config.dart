import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

DevicePreview devicePreviewConfig({required WidgetBuilder builder}) {
  return DevicePreview(
    // enabled: FlavorConfig.instance.variables['devicePreviewEnable'],
    enabled: false,
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
