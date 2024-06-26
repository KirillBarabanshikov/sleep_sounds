import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'custom_themes/custom_themes.dart';

part 'theme.g.dart';

@riverpod
class CurrentThemeMode extends _$CurrentThemeMode {
  late final _box = Hive.box<String>('theme');

  @override
  ThemeMode build() {
    final themeModeName = _box.get('themeMode');

    return ThemeMode.values.singleWhere(
      (themeMode) => themeMode.name == themeModeName,
      orElse: () => ThemeMode.system,
    );
  }

  void set(ThemeMode themeMode) {
    state = themeMode;

    _box.put('themeMode', themeMode.name);
  }
}

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'SF-Pro-Rounded',
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromRGBO(0, 112, 255, 1),
      brightness: Brightness.light,
      background: const Color.fromRGBO(255, 255, 255, 1),
      primary: const Color.fromRGBO(0, 112, 255, 1),
      secondary: const Color.fromRGBO(199, 199, 204, 1),
      tertiary: const Color.fromRGBO(242, 242, 247, 1),
    ),
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    bottomNavigationBarTheme: AppBottomNavigationBarTheme.lightBottomNavigationBarTheme,
    dividerTheme: AppDividerTheme.lightDividerTheme,
    inputDecorationTheme: AppInputDecorationTheme.lightInputDecorationTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    sliderTheme: AppSliderTheme.lightSliderTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'SF-Pro-Rounded',
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromRGBO(72, 112, 255, 1),
      brightness: Brightness.dark,
      background: const Color.fromRGBO(20, 25, 39, 1),
      primary: const Color.fromRGBO(72, 112, 255, 1),
      secondary: const Color.fromRGBO(33, 40, 63, 1),
      tertiary: const Color.fromRGBO(45, 52, 75, 1),
    ),
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    bottomNavigationBarTheme: AppBottomNavigationBarTheme.darkBottomNavigationBarTheme,
    dividerTheme: AppDividerTheme.darkDividerTheme,
    inputDecorationTheme: AppInputDecorationTheme.darkInputDecorationTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    sliderTheme: AppSliderTheme.darkSliderTheme,
  );
}
