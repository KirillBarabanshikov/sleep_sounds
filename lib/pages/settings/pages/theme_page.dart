import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/theme/theme.dart';
import '../../../shared/extensions/extensions.dart';

class ThemePage extends ConsumerWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(currentThemeModeProvider);

    return Scaffold(
      body: Column(
        children: ThemeMode.values
            .map((e) => RadioListTile(
                  value: e.name,
                  title: Text(e.label),
                  groupValue: currentThemeMode.name,
                  onChanged: (_) => ref.read(currentThemeModeProvider.notifier).set(e),
                ))
            .toList(),
      ),
    );
  }
}
