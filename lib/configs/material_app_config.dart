import 'package:flutter/material.dart';

MaterialApp materialAppConfig({required Widget home}) {
  return MaterialApp(
    useInheritedMediaQuery: true,
    home: home,
  );
}
