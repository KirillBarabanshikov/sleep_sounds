import 'package:flutter/material.dart';

class AppInputDecorationTheme {
  const AppInputDecorationTheme._();

  static const InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme();

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    constraints: const BoxConstraints(maxHeight: 60),
  );
}
