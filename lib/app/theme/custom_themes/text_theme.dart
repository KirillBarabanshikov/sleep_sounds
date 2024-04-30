import 'package:flutter/material.dart';

class AppTextTheme {
  const AppTextTheme._();

  static const TextTheme lightTextTheme = TextTheme(
    titleLarge: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
    titleMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
    titleSmall: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
    // headline
    headlineLarge: TextStyle(fontSize: 17),
    headlineMedium: TextStyle(),
    headlineSmall: TextStyle(),
    // body
    bodyLarge: TextStyle(fontSize: 17, color: Color.fromRGBO(0, 0, 0, 0.6)),
    bodyMedium: TextStyle(fontSize: 15, color: Color.fromRGBO(0, 0, 0, 0.6)),
    bodySmall: TextStyle(fontSize: 13, color: Color.fromRGBO(0, 0, 0, 0.6)),
    // label
    labelLarge: TextStyle(fontSize: 12, color: Color.fromRGBO(0, 0, 0, 0.6)),
    labelMedium: TextStyle(fontSize: 10),
    labelSmall: TextStyle(),
  );

  static const TextTheme darkTextTheme = TextTheme(
    titleLarge: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
    titleMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
    titleSmall: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
    // headline
    headlineLarge: TextStyle(fontSize: 17),
    headlineMedium: TextStyle(),
    headlineSmall: TextStyle(),
    // body
    bodyLarge: TextStyle(fontSize: 17, color: Color.fromRGBO(235, 235, 245, 0.6)),
    bodyMedium: TextStyle(fontSize: 15, color: Color.fromRGBO(235, 235, 245, 0.6)),
    bodySmall: TextStyle(fontSize: 13, color: Color.fromRGBO(235, 235, 245, 0.6)),
    // label
    labelLarge: TextStyle(fontSize: 12, color: Color.fromRGBO(235, 235, 245, 0.6)),
    labelMedium: TextStyle(fontSize: 10),
    labelSmall: TextStyle(),
  );
}
