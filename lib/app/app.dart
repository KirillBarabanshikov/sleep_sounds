import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme/theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(currentThemeModeProvider);

    return MaterialApp(
      title: 'Sleep sounds',
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              const Text('TEXT test'),
              Switch(
                value: themeMode.name == 'dark',
                onChanged: (value) {
                  ref
                      .read(currentThemeModeProvider.notifier)
                      .set(value ? ThemeMode.dark : ThemeMode.light);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
