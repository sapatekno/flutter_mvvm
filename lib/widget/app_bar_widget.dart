import 'package:dio_log/dio_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sapatekno_mvvm/page/setting/setting_page.view.dart';
import 'package:sapatekno_mvvm/page/talker_screen/talker_screen_page.dart';
import 'package:sapatekno_mvvm/util/app_util.dart';

AppBar appBarWidget({required BuildContext context}) {
  void showDebugMenu() {
    // ignore: prefer_const_constructors
    AlertDialog alert = AlertDialog(
      content: SizedBox(
        width: 0.5.sw,
        child: ListView(
          shrinkWrap: true,
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HttpLogListWidget()));
              },
              icon: const Icon(Icons.signal_cellular_alt),
              label: const Text('Network Log'),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(TalkerScreenPage.routeName);
              },
              icon: const Icon(Icons.display_settings),
              label: const Text('Console Log'),
            ),
          ],
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Widget? devWidget = AppUtil.isDevelopment()
      ? IconButton(
          icon: const Icon(Icons.bug_report),
          onPressed: () => showDebugMenu(),
        )
      : Container();

  return AppBar(
    title: const Text('User List'),
    actions: [
      IconButton(onPressed: () => Navigator.of(context).pushNamed(SettingPage.routeName), icon: const Icon(Icons.settings)),
      devWidget,
    ],
  );
}
