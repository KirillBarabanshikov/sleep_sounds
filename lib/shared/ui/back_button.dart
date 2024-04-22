import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: context.pop,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 7),
              Text(
                text,
                style: theme.textTheme.headlineLarge?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
