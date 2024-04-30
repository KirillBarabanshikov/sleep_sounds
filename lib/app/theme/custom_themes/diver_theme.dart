import 'package:flutter/material.dart';

class AppDividerTheme {
  const AppDividerTheme._();

  static const DividerThemeData lightDividerTheme = DividerThemeData(
    color: Color.fromRGBO(199, 199, 204, 1),
    thickness: 1,
    space: 40,
  );

  static const DividerThemeData darkDividerTheme = DividerThemeData(
    color: Color.fromRGBO(33, 40, 63, 1),
    thickness: 1,
    space: 40,
  );
}
