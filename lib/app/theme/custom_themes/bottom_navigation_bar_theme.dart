import 'package:flutter/material.dart';

class AppBottomNavigationBarTheme {
  const AppBottomNavigationBarTheme._();

  static const BottomNavigationBarThemeData lightBottomNavigationBarTheme = BottomNavigationBarThemeData();

  static const BottomNavigationBarThemeData darkBottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: Color.fromRGBO(33, 40, 63, 1),
    selectedItemColor: Color.fromRGBO(72, 112, 255, 1),
    selectedLabelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
    selectedIconTheme: IconThemeData(size: 24),
    unselectedItemColor: Color.fromRGBO(235, 235, 245, 0.6),
    unselectedLabelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
    unselectedIconTheme: IconThemeData(size: 24),
  );
}
