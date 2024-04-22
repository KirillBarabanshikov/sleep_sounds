import 'package:flutter/material.dart';

class AppSliderTheme {
  const AppSliderTheme._();

  static const SliderThemeData lightSliderTheme = SliderThemeData();

  static SliderThemeData darkSliderTheme = const SliderThemeData(
    trackHeight: 4,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
  );
}

class _SliderThumb extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(8, 8);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    paint(
      context,
      center,
      activationAnimation: activationAnimation,
      enableAnimation: enableAnimation,
      isDiscrete: isDiscrete,
      labelPainter: labelPainter,
      parentBox: parentBox,
      sliderTheme: sliderTheme,
      textDirection: textDirection,
      value: value,
      textScaleFactor: textScaleFactor,
      sizeWithOverflow: sizeWithOverflow,
    );
  }
}
