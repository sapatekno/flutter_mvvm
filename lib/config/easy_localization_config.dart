import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

EasyLocalization easyLocalizationConfig({required Widget child}) {
  return EasyLocalization(
    supportedLocales: const [
      Locale('en', 'US'),
      Locale('id', 'ID'),
    ],
    path: 'assets/translations',
    fallbackLocale: const Locale('en', 'US'),
    child: child,
  );
}
