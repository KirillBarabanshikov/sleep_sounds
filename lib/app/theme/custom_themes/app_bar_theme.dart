import 'package:flutter/material.dart';

class TAppBarTheme {
  const TAppBarTheme._();

  static const AppBarTheme lightAppBarTheme = AppBarTheme();

  static const AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
  );
}
