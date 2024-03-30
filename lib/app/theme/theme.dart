import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromRGBO(72, 112, 255, 1),
    background: const Color.fromRGBO(229, 229, 234, 1),
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromRGBO(72, 112, 255, 1),
    background: const Color.fromRGBO(20, 25, 39, 1),
  ),
);
