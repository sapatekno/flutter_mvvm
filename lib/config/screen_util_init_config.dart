import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ScreenUtilInit screenUtilInitConfig({required Widget Function() builder}) {
  const double screenWidth = 360;
  const double screenHeight = 690;

  return ScreenUtilInit(
    designSize: const Size(screenWidth, screenHeight),
    minTextAdapt: true,
    splitScreenMode: false,
    builder: builder,
  );
}
