import 'package:flutter/material.dart';
import 'package:sapatekno_mvvm/page/sample/sample_page.view.dart';
import 'package:sapatekno_mvvm/page/setting/setting_page.view.dart';
import 'package:sapatekno_mvvm/page/talker_screen/talker_screen_page.dart';

Map<String, WidgetBuilder> routeConfig() {
  return {
    SamplePage.routeName: (context) => const SamplePage(),
    SettingPage.routeName: (context) => const SettingPage(),
    TalkerScreenPage.routeName: (context) => const TalkerScreenPage(),
  };
}
