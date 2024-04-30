import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  const AppElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: const Color.fromRGBO(199, 199, 204, 1),
      textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
    ),
  );

  static ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: const Color.fromRGBO(33, 40, 63, 1),
      textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
    ),
  );
}
