import 'package:flutter/material.dart';

class AppSliderTheme {
  const AppSliderTheme._();

  static const SliderThemeData lightSliderTheme = SliderThemeData(
    trackHeight: 4,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
  );

  static const SliderThemeData darkSliderTheme = SliderThemeData(
    trackHeight: 4,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
  );
}
