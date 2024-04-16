import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsLayout extends StatelessWidget {
  const SettingsLayout({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 85,
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Row(
            children: [
              const SizedBox(width: 5),
              Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 28,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 7),
              Text(
                'Profile',
                style: theme.textTheme.headlineLarge?.copyWith(color: theme.colorScheme.primary),
              ),
            ],
          ),
        ),
        title: Text(title),
      ),
      body: child,
    );
  }
}
