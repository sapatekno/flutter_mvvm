import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

MaterialApp materialAppConfig({required Widget home}) {
  return MaterialApp(
    useInheritedMediaQuery: true,
    builder: (context, widget) {
      ScreenUtil.setContext(context);
      return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: widget!,
      );
    },
    home: home,
  );
}
